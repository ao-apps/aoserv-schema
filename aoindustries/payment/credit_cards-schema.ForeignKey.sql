select "schema".add_foreign_key('payment', 'credit_cards', 'accounting',                       'account', 'businesses',              'accounting',  '1.0a100', null);
select "schema".add_foreign_key('payment', 'credit_cards', 'processor_id',                                'credit_card_processors',  'provider_id', '1.29',    null);
select "schema".add_foreign_key('payment', 'credit_cards', 'country_code',                     'public',  'country_codes',           'code',        '1.29',    '1.68');
select "schema".add_foreign_key('payment', 'credit_cards', 'country_code',                     'public',  'country_codes',           'code',        '1.69',    null);
select "schema".add_foreign_key('payment', 'credit_cards', 'created_by',                       'account', 'business_administrators', 'username',    '1.0a100', null);
select "schema".add_foreign_key('payment', 'credit_cards', 'encryption_card_number_from',      'account', 'encryption_keys',         'pkey',        '1.31',    null);
select "schema".add_foreign_key('payment', 'credit_cards', 'encryption_card_number_recipient', 'account', 'encryption_keys',         'pkey',        '1.31',    null);
select "schema".add_foreign_key('payment', 'credit_cards', 'encryption_expiration_from',       'account', 'encryption_keys',         'pkey',        '1.31',    null);
select "schema".add_foreign_key('payment', 'credit_cards', 'encryption_expiration_recipient',  'account', 'encryption_keys',         'pkey',        '1.31',    null);