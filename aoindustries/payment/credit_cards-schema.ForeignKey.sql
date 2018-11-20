select "schema".add_foreign_key('payment', 'credit_cards', 'accounting',                       'public', 'businesses',              'accounting',  '1.0a100', null);
select "schema".add_foreign_key('payment', 'credit_cards', 'processor_id',                               'credit_card_processors',  'provider_id', '1.29',    null);
select "schema".add_foreign_key('payment', 'credit_cards', 'country_code',                     'public', 'country_codes',           'code',        '1.29',    '1.68');
select "schema".add_foreign_key('payment', 'credit_cards', 'country_code',                     'public', 'country_codes',           'code',        '1.69',    null);
select "schema".add_foreign_key('payment', 'credit_cards', 'created_by',                       'public', 'business_administrators', 'username',    '1.0a100', null);
select "schema".add_foreign_key('payment', 'credit_cards', 'encryption_card_number_from',      'public', 'encryption_keys',         'pkey',        '1.31',    null);
select "schema".add_foreign_key('payment', 'credit_cards', 'encryption_card_number_recipient', 'public', 'encryption_keys',         'pkey',        '1.31',    null);
select "schema".add_foreign_key('payment', 'credit_cards', 'encryption_expiration_from',       'public', 'encryption_keys',         'pkey',        '1.31',    null);
select "schema".add_foreign_key('payment', 'credit_cards', 'encryption_expiration_recipient',  'public', 'encryption_keys',         'pkey',        '1.31',    null);
