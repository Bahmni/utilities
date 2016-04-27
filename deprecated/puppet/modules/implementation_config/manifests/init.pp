class implementation_config {

  if $implementation_name == undef { fail("'implementation_name' not defined") }
  
  contain 'implementation_config::openmrs'
  
  if $bahmni_openelis_required == "true" {
	  contain 'implementation_config::openelis'
  }

  if $bahmni_openerp_required == "true" {
	  contain 'implementation_config::openerp'
  }
}