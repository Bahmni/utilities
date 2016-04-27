\set ON_ERROR_STOP true

TRUNCATE res_partner_attributes;
TRUNCATE failed_events;

UPDATE res_partner_address
SET address1 = concat('address1-', partner_id),
	address2 = concat('address2-', partner_id),
	address3 = concat('address3-', partner_id);

UPDATE res_users
SET login = concat('user-', id)
WHERE login NOT IN ('admin');

-- Set every one's password as 'password'
UPDATE res_users
SET password_crypt = '$1$lw8k34ec$xOY5xkPtTgTw/gN6nHiZq.',
	password = '';

UPDATE event_records
SET object = regexp_replace(object, '"customerId": "(.+?)"', '"customerId": "XXX123456"') 
WHERE category = 'sale_order';

TRUNCATE mail_message CASCADE;
TRUNCATE mail_followers CASCADE;
UPDATE mail_alias SET alias_name = concat('alias-', id);

UPDATE res_partner
SET name = concat('User ', res_users.id)
FROM res_users
WHERE res_users.partner_id = res_partner.id;

UPDATE res_partner
SET image_medium = NULL, image_small = NULL
where image_medium IS NOT NULL OR image_small IS NOT NULL;