select "schema".add_foreign_key('credit_card_processors', 'accounting', 'businesses', 'accounting', '1.29', null);
select "schema".add_foreign_key('credit_card_processors', 'encryption_from', 'encryption_keys', 'pkey', '1.31', null);
select "schema".add_foreign_key('credit_card_processors', 'encryption_recipient', 'encryption_keys', 'pkey', '1.31', null);
