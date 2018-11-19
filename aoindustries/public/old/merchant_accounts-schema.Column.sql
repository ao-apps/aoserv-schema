select "schema".add_column('merchant_accounts', 'name', 0, 'string', false, true, false, 'the unique name', '1.0a100', '1.28');
select "schema".add_column('merchant_accounts', 'display', 1, 'string', false, false, false, 'the display name', '1.0a100', '1.28');
select "schema".add_column('merchant_accounts', 'bank_account', 2, 'string', false, false, false, 'the bank account used in the transactions', '1.0a100', '1.28');
select "schema".add_column('merchant_accounts', 'java_connector', 3, 'string', true, false, false, 'the Java class that connects to this provider, NULL means cannot connect with Java', '1.0a100', '1.28');
select "schema".add_column('merchant_accounts', 'url', 4, 'string', true, false, false, 'the URL to connect to', '1.0a100', '1.28');
select "schema".add_column('merchant_accounts', 'merchant_id', 5, 'string', false, false, false, 'the merchant ID', '1.0a100', '1.28');
select "schema".add_column('merchant_accounts', 'deposit_delay', 6, 'int', false, false, false, 'the number of business days it takes for a deposit to be sent to the bank account', '1.0a100', '1.28');
select "schema".add_column('merchant_accounts', 'withdrawal_delay', 7, 'int', false, false, false, 'the number of business days it takes for a withdrawal to be taken from the bank account', '1.0a100', '1.28');
