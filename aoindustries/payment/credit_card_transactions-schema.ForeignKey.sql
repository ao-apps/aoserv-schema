select "schema".add_foreign_key('payment', 'credit_card_transactions', 'accounting',               'public', 'businesses',              'accounting',  '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'authorization_username',   'public', 'business_administrators', 'username',    '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'capture_username',         'public', 'business_administrators', 'username',    '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'credit_card_accounting',   'public', 'businesses',              'accounting',  '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'credit_card_country_code', 'public', 'country_codes',           'code',        '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'credit_card_created_by',   'public', 'business_administrators', 'username',    '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'processor_id',                       'credit_card_processors',  'provider_id', '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'shipping_country_code',    'public', 'country_codes',           'code',        '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'void_username',            'public', 'business_administrators', 'username',    '1.69', null);
