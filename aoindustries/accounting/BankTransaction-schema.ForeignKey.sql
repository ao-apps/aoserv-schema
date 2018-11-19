select "schema".add_foreign_key('bank_transactions', 'bank_account', 'bank_accounts', 'name', '1.0a100', null);
select "schema".add_foreign_key('bank_transactions', 'merchant_account', 'merchant_accounts', 'name', '1.0a100', '1.28');
select "schema".add_foreign_key('bank_transactions', 'processor', 'credit_card_processors', 'provider_id', '1.29', null);
select "schema".add_foreign_key('bank_transactions', 'administrator', 'master_users', 'username', '1.0a100', null);
select "schema".add_foreign_key('bank_transactions', 'type', 'bank_transaction_types', 'type', '1.0a100', null);
select "schema".add_foreign_key('bank_transactions', 'expense_code', 'expense_categories', 'expense_code', '1.0a100', null);
