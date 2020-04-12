select "schema".add_column('payment', 'incoming_payments', 'transid',                    'int',    false,  true, false, 'the unique transaction number (see transactions)', '1.0a100', '1.28');
select "schema".add_column('payment', 'incoming_payments', 'encrypted_card_name',        'string', false, false, false, 'the encrypted name of the card', '1.0a100', '1.28');
select "schema".add_column('payment', 'incoming_payments', 'encrypted_card_number',      'string', false, false, false, 'the encrypted card number', '1.0a100', '1.28');
select "schema".add_column('payment', 'incoming_payments', 'encrypted_expiration_month', 'string', false, false, false, 'the encrypted expiration month', '1.0a100', '1.28');
select "schema".add_column('payment', 'incoming_payments', 'encrypted_expiration_year',  'string', false, false, false, 'the encrypted expiration year', '1.0a100', '1.28');
