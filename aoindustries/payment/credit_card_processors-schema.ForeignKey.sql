select "schema".add_foreign_key('payment', 'credit_card_processors', 'accounting',           'public', 'businesses',      'accounting', '1.29', null);
select "schema".add_foreign_key('payment', 'credit_card_processors', 'encryption_from',      'public', 'encryption_keys', 'pkey',       '1.31', null);
select "schema".add_foreign_key('payment', 'credit_card_processors', 'encryption_recipient', 'public', 'encryption_keys', 'pkey',       '1.31', null);
