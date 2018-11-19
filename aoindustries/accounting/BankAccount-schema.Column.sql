select "schema".add_column('bank_accounts', 'name', 'string', false, true, false, 'the unique name of this account', '1.0a100', null);
select "schema".add_column('bank_accounts', 'display', 'string', false, false, false, 'the display name of this account', '1.0a100', null);
select "schema".add_column('bank_accounts', 'bank', 'string', false, false, false, 'the bank the account is with', '1.0a100', null);
select "schema".add_column('bank_accounts', 'deposit_delay', 'int', false, false, false, 'the number of business days it takes for a deposit to be sent to the bank account', '1.0a100', null);
select "schema".add_column('bank_accounts', 'withdrawal_delay', 'int', false, false, false, 'the number of business days it takes for a withdrawal to be taken from the bank account', '1.0a100', null);
