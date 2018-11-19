select "schema".add_column('encryption_keys', 'pkey', 0, 'pkey', false, true, false, 'a generated unique id', '1.23', null);
select "schema".add_column('encryption_keys', 'accounting', 1, 'accounting', false, false, false, 'the accounting code of the business that owns this key', '1.23', null);
select "schema".add_column('encryption_keys', 'id', 2, 'string', false, false, false, 'the id of the recipient who may decrypt the message', '1.23', null);
select "schema".add_column('encryption_keys', 'use_signup_requests', 3, 'boolean', false, false, false, 'if true, this key may be used for encrypting signup request data (including credit card details)', '1.23', '1.24');
select "schema".add_column('encryption_keys', 'signup_signer', 4, 'boolean', false, false, false, 'if true, this key may be used for signing signup request data (including credit card details)', '1.25', '1.43');
select "schema".add_column('encryption_keys', 'signup_recipient', 5, 'boolean', false, false, false, 'if true, this key may be used for encrypting signup request data (including credit card details)', '1.25', '1.43');
select "schema".add_column('encryption_keys', 'use_credit_cards', 6, 'boolean', false, false, false, 'if true, this key may be used for encrypting credit cards in the credit_cards table', '1.23', '1.24');
select "schema".add_column('encryption_keys', 'credit_card_signer', 7, 'boolean', false, false, false, 'if true, this key may be used for signing credit cards in the credit_cards table', '1.25', '1.30');
select "schema".add_column('encryption_keys', 'credit_card_recipient', 8, 'boolean', false, false, false, 'if true, this key may be used for encrypting credit cards in the credit_cards table', '1.25', '1.30');
