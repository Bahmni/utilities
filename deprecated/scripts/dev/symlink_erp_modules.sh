cd /usr/lib/python2.6/site-packages/openerp-7.0_20130301_002301-py2.6.egg/openerp/addons

rm -rf auth_crypt
rm -rf bahmni_atom_feed
rm -rf bahmni_customer_payment
rm -rf bahmni_dhis2_export
rm -rf bahmni_internal_stock_move
rm -rf bahmni_lab_seed_setup
rm -rf bahmni_logger
rm -rf bahmni_module_install
rm -rf bahmni_pharmacy_product
rm -rf bahmni_print_bill
rm -rf bahmni_purchase_extension
rm -rf bahmni_sale_discount
rm -rf bahmni_seed_setup
rm -rf bahmni_stock_batch_sale_price
rm -rf bahmni_web_extensions
rm -rf print_receipt
rm -rf sale_stock
rm -rf search_customizations
rm -rf search_seed_data

ln -s /bahmni/openerp-modules/auth_crypt auth_crypt
ln -s /bahmni/openerp-modules/bahmni_atom_feed bahmni_atom_feed
ln -s /bahmni/openerp-modules/bahmni_customer_payment bahmni_customer_payment
ln -s /bahmni/openerp-modules/bahmni_dhis2_export bahmni_dhis2_export
ln -s /bahmni/openerp-modules/bahmni_internal_stock_move bahmni_internal_stock_move
ln -s /bahmni/openerp-modules/bahmni_lab_seed_setup bahmni_lab_seed_setup
ln -s /bahmni/openerp-modules/bahmni_logger bahmni_logger
ln -s /bahmni/openerp-modules/bahmni_module_install bahmni_module_install
ln -s /bahmni/openerp-modules/bahmni_pharmacy_product bahmni_pharmacy_product
ln -s /bahmni/openerp-modules/bahmni_print_bill bahmni_print_bill
ln -s /bahmni/openerp-modules/bahmni_purchase_extension bahmni_purchase_extension
ln -s /bahmni/openerp-modules/bahmni_sale_discount bahmni_sale_discount
ln -s /bahmni/openerp-modules/bahmni_seed_setup bahmni_seed_setup
ln -s /bahmni/openerp-modules/bahmni_stock_batch_sale_price bahmni_stock_batch_sale_price
ln -s /bahmni/openerp-modules/bahmni_web_extensions bahmni_web_extensions
ln -s /bahmni/openerp-modules/print_receipt print_receipt
ln -s /bahmni/openerp-modules/sale_stock sale_stock
ln -s /bahmni/openerp-modules/search_customizations search_customizations
ln -s /bahmni/openerp-modules/search_seed_data search_seed_data

chown -R openerp:openerp .