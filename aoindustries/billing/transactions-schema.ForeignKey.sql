select "schema".add_foreign_key('billing', 'transactions', 'accounting',              'public',     'businesses',               'accounting',  '1.0a100', null);
select "schema".add_foreign_key('billing', 'transactions', 'source_accounting',       'public',     'businesses',               'accounting',  '1.0a100', null);
select "schema".add_foreign_key('billing', 'transactions', 'username',                'public',     'business_administrators',  'username',    '1.0a100', null);
select "schema".add_foreign_key('billing', 'transactions', 'type',                                  'rates',                    'name',        '1.0a100', '1.0a122');
select "schema".add_foreign_key('billing', 'transactions', 'type',                                  'transaction_types',        'name',        '1.0a123', null);
select "schema".add_foreign_key('billing', 'transactions', 'payment_type',            'public',     'payment_types',            'name',        '1.0a100', null);
select "schema".add_foreign_key('billing', 'transactions', 'merchant_account',        'accounting', 'merchant_accounts',        'name',        '1.0a100', '1.28');
select "schema".add_foreign_key('billing', 'transactions', 'processor',               'public',     'credit_card_processors',   'provider_id', '1.29',    null);
select "schema".add_foreign_key('billing', 'transactions', 'credit_card_transaction', 'public',     'credit_card_transactions', 'pkey',        '1.29',    null);
