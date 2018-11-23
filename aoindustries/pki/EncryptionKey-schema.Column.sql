select "schema".add_column('pki', 'encryption_keys', 'pkey',                  'pkey',       false,  true, false, 'a generated unique id', '1.23', null);
select "schema".add_column('pki', 'encryption_keys', 'accounting',            'accounting', false, false, false, 'the accounting code of the business that owns this key', '1.23', null);
select "schema".add_column('pki', 'encryption_keys', 'id',                    'string',     false, false, false, 'the id of the recipient who may decrypt the message', '1.23', null);
select "schema".add_column('pki', 'encryption_keys', 'use_signup_requests',   'boolean',    false, false, false, 'if true, this key may be used for encrypting signup request data (including credit card details)', '1.23', '1.24');
select "schema".add_column('pki', 'encryption_keys', 'signup_signer',         'boolean',    false, false, false, 'if true, this key may be used for signing signup request data (including credit card details)', '1.25', '1.43');
select "schema".add_column('pki', 'encryption_keys', 'signup_recipient',      'boolean',    false, false, false, 'if true, this key may be used for encrypting signup request data (including credit card details)', '1.25', '1.43');
select "schema".add_column('pki', 'encryption_keys', 'use_credit_cards',      'boolean',    false, false, false, 'if true, this key may be used for encrypting credit cards in the credit_cards table', '1.23', '1.24');
select "schema".add_column('pki', 'encryption_keys', 'credit_card_signer',    'boolean',    false, false, false, 'if true, this key may be used for signing credit cards in the credit_cards table', '1.25', '1.30');
select "schema".add_column('pki', 'encryption_keys', 'credit_card_recipient', 'boolean',    false, false, false, 'if true, this key may be used for encrypting credit cards in the credit_cards table', '1.25', '1.30');
