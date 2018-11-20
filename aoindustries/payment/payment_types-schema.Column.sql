select "schema".add_column('payment', 'payment_types', 'name',        'string',  false,  true, true, 'the name of the type', '1.0a100', null);
select "schema".add_column('payment', 'payment_types', 'description', 'string',  false, false, true, 'a description of the type of payment', '1.0a100', null);
select "schema".add_column('payment', 'payment_types', 'active',      'boolean', false, false, true, 'indicates if payment is currently accepted via this method', '1.0a100', null);
select "schema".add_column('payment', 'payment_types', 'allow_web',   'boolean', false, false, true, 'indicates if payment is allowed via a web form', '1.0a100', null);
