select "schema".add_foreign_key('payment', 'credit_card_transactions', 'accounting',               'account', 'businesses',              'accounting',  '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'authorization_username',   'account', 'business_administrators', 'username',    '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'capture_username',         'account', 'business_administrators', 'username',    '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'credit_card_accounting',   'account', 'businesses',              'accounting',  '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'credit_card_country_code', 'payment', 'country_codes',           'code',        '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'credit_card_created_by',   'account', 'business_administrators', 'username',    '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'processor_id',             'payment', 'credit_card_processors',  'provider_id', '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'shipping_country_code',    'payment', 'country_codes',           'code',        '1.69', null);
select "schema".add_foreign_key('payment', 'credit_card_transactions', 'void_username',            'account', 'business_administrators', 'username',    '1.69', null);