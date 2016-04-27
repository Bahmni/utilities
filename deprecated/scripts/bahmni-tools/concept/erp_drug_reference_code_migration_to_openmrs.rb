#!/usr/bin/ruby
require 'mysql2'
require 'micro-optparse'
require 'pg'
require 'uuid'

# gem install mysql2 pg micro-optparse uuid
parser = Parser.new do |p|
   p.banner = "Usage: ruby #{__FILE__} [options]"
   p.option :host, "Host name or IP", :default => "192.168.33.10", :short => 'H'
   p.option :verbose, "Verbose mode", :default => true
end
options = parser.process!

@openmrs_conn = Mysql2::Client.new(:host => options[:host], :username => 'openmrs-user', :password => 'password', :database => 'openmrs')
@openerp_conn = PGconn.new(:host => options[:host], :user =>'openerp', :password =>'password', :dbname =>'openerp')
@verbose = options[:verbose]

def openmrs_read_query(sql)
  @openmrs_conn.query(sql, :symbolize_keys => true)
end

def openmrs_update_query(sql)
    @openmrs_conn.query(sql)
end

def log(message)
  puts message if @verbose
end

def get_concept_search_term(concept_id, name)
  openmrs_read_query("Select * from concept_name where concept_id = #{concept_id} and name = '#{name}' and concept_name_type = 'INDEX_TERM' and voided = 0").to_a[0]
end

def get_concept_word(concept_id, concept_name_id, word)
  openmrs_read_query("Select * from concept_word where concept_id = #{concept_id} and concept_name_id = #{concept_name_id} and word = '#{word}'").to_a[0]
end

def get_or_create_search_term(concept_id, reference_code)
    concept_name = get_concept_search_term(concept_id, reference_code)
    if concept_name.nil?
      log "Search term '#{reference_code}' doesn't exist for concept #{concept_id}. Creating.."
      openmrs_update_query("INSERT INTO concept_name (concept_id, name, locale, locale_preferred, creator, date_created, concept_name_type, uuid)
                          values (#{concept_id}, '#{reference_code}', 'en', 0, 1, '#{Time.now.strftime('%Y-%m-%d %H:%M:%S')}', 'INDEX_TERM', '#{UUID.generate}')")
    else
      log "Search term '#{reference_code}' exists for concept #{concept_id}"
    end
    get_concept_search_term(concept_id, reference_code)
end

def migrate
  openerp_drugs = @openerp_conn.query("select product_product.uuid, product_product.name_template as name, product_product.default_code
                      from product_product
                      join product_template on product_template.id = product_product.product_tmpl_id 
                      join product_category as child_category on child_category.id = product_template.categ_id 
                      join product_category as parent_category on parent_category.id = child_category.parent_id
                      where parent_category.name = 'Drug' and product_product.default_code IS NOT NULL AND product_product.default_code != '';");
  openerp_drugs.each do |openerp_drug|
    log '-' * 100
    log "Drug : #{openerp_drug}"
    reference_codes = openerp_drug['default_code'].split(',').map(&:strip).compact
    concept_id = openmrs_read_query("Select concept_id from drug where uuid = '#{openerp_drug['uuid']}'").to_a[0][:concept_id]
    reference_codes.each do |reference_code|
      concept_name = get_or_create_search_term(concept_id, reference_code)
      concept_word = get_concept_word(concept_id, concept_name[:concept_name_id], reference_code)
      if concept_word.nil?
        log "Concept word '#{reference_code}' doesn't exist for concept #{concept_id} concept_name_id #{concept_name[:concept_name_id]}. Creating.."
        openmrs_update_query("INSERT INTO concept_word(concept_id, concept_name_id, word, locale, weight)
                             VALUES (#{concept_id}, #{concept_name[:concept_name_id]}, '#{reference_code}', 'en', 1)")
      else
        log "Concept word '#{reference_code}' exists for concept #{concept_id} concept_name_id #{concept_name[:concept_name_id]}"
      end
    end    
  end
end

migrate