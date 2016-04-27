truncate table 
	 sale_order,
	 sale_order_line,
	 sale_make_invoice,
	 sale_order_invoice_rel,
	 sale_order_line_invoice_rel,
	 sale_order_line_make_invoice,
	 sale_order_line_property_rel,
	 sale_order_tax,

	 sale_order_group,
	 account_invoice_line,
	 ledger_journal_rel,
	 reconcile_account_rel, 
	 validate_account_move,
	 procurement_order,
	 purchase_order,
	 purchase_order_line,
	 purchase_invoice_rel,
	 stock_picking,
	 stock_partial_picking,
	 stock_partial_picking_line,
	 stock_partial_move,
	 stock_partial_move_line,
	 stock_move,
	 stock_move_split,
	 stock_move_split_lines,
	 stock_return_picking_memory,
	 stock_inventory_move_rel,
	 stock_move_history_ids,

	 account_invoice_line_tax,
	 account_invoice,
	 account_invoice_refund,
	 account_invoice_tax,
	 account_invoice_cancel,
	 account_invoice_confirm,

	 purchase_order_line_invoice_rel,
	 stock_warehouse_orderpoint,
	 purchase_order_taxe,

	 account_voucher,
	 account_bank_statement_line,
	 account_voucher_line,
	 account_bank_statement_line_move_rel,

	 account_move_line,
	 account_move_line_relation,
	 account_analytic_line;

truncate table
	 res_partner_attributes,
	 res_partner_address,
	 res_partner_bank_type_field,
	 res_partner_res_partner_category_rel,
	 res_partner_category;

delete from res_partner where not exists (select ru.partner_id from res_users ru where ru.partner_id = res_partner.id) and id != 1;

truncate table event_records_offset_marker;
