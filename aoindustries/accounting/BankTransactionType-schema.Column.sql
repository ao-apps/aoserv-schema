select "schema".add_column('accounting', 'bank_transaction_types', 'type',        'string',  false,  true, false, 'the name of the type', '1.0a100', null);
select "schema".add_column('accounting', 'bank_transaction_types', 'display',     'string',  false, false, false, 'the display value for the type', '1.0a100', null);
select "schema".add_column('accounting', 'bank_transaction_types', 'description', 'string',  false, false, false, 'a description of the type', '1.0a100', null);
select "schema".add_column('accounting', 'bank_transaction_types', 'is_negative', 'boolean', false, false, false, 'if true the amount must be negative', '1.0a100', null);
