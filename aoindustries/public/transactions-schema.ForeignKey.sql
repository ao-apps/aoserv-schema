select "schema".add_foreign_key('public', 'transactions', 'accounting',                            'businesses',               'accounting',  '1.0a100', null);
select "schema".add_foreign_key('public', 'transactions', 'source_accounting',                     'businesses',               'accounting',  '1.0a100', null);
select "schema".add_foreign_key('public', 'transactions', 'username',                              'business_administrators',  'username',    '1.0a100', null);
select "schema".add_foreign_key('public', 'transactions', 'type',                                  'rates',                    'name',        '1.0a100', '1.0a122');
select "schema".add_foreign_key('public', 'transactions', 'type',                                  'transaction_types',        'name',        '1.0a123', null);
select "schema".add_foreign_key('public', 'transactions', 'payment_type',                          'payment_types',            'name',        '1.0a100', null);
select "schema".add_foreign_key('public', 'transactions', 'merchant_account',        'accounting', 'merchant_accounts',        'name',        '1.0a100', '1.28');
select "schema".add_foreign_key('public', 'transactions', 'processor',                             'credit_card_processors',   'provider_id', '1.29',    null);
select "schema".add_foreign_key('public', 'transactions', 'credit_card_transaction',               'credit_card_transactions', 'pkey',        '1.29',    null);
