select "schema".add_foreign_key('accounting', 'bank_transactions', 'bank_account',     'accounting', 'bank_accounts',          'name',         '1.0a100', null);
select "schema".add_foreign_key('accounting', 'bank_transactions', 'merchant_account', 'accounting', 'merchant_accounts',      'name',         '1.0a100', '1.28');
select "schema".add_foreign_key('accounting', 'bank_transactions', 'processor',        'public',     'credit_card_processors', 'provider_id',  '1.29',    null);
select "schema".add_foreign_key('accounting', 'bank_transactions', 'administrator',    'public',     'master_users',           'username',     '1.0a100', null);
select "schema".add_foreign_key('accounting', 'bank_transactions', 'type',             'accounting', 'bank_transaction_types', 'type',         '1.0a100', null);
select "schema".add_foreign_key('accounting', 'bank_transactions', 'expense_code',     'accounting', 'expense_categories',     'expense_code', '1.0a100', null);
