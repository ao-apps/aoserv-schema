select "schema".add_column('payment_types', 'name', 0, 'string', false, true, true, 'the name of the type', '1.0a100', null);
select "schema".add_column('payment_types', 'description', 1, 'string', false, false, true, 'a description of the type of payment', '1.0a100', null);
select "schema".add_column('payment_types', 'active', 2, 'boolean', false, false, true, 'indicates if payment is currently accepted via this method', '1.0a100', null);
select "schema".add_column('payment_types', 'allow_web', 3, 'boolean', false, false, true, 'indicates if payment is allowed via a web form', '1.0a100', null);
