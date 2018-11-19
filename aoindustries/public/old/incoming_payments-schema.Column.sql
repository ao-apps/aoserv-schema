select "schema".add_column('incoming_payments', 'transid', 0, 'int', false, true, false, 'the unique transaction number (see transactions)', '1.0a100', '1.28');
select "schema".add_column('incoming_payments', 'encrypted_card_name', 1, 'string', false, false, false, 'the encrypted name of the card', '1.0a100', '1.28');
select "schema".add_column('incoming_payments', 'encrypted_card_number', 2, 'string', false, false, false, 'the encrypted card number', '1.0a100', '1.28');
select "schema".add_column('incoming_payments', 'encrypted_expiration_month', 3, 'string', false, false, false, 'the encrypted expiration month', '1.0a100', '1.28');
select "schema".add_column('incoming_payments', 'encrypted_expiration_year', 4, 'string', false, false, false, 'the encrypted expiration year', '1.0a100', '1.28');
