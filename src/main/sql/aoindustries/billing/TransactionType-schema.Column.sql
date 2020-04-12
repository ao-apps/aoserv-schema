select "schema".add_column('billing', 'transaction_types', 'name',        'string',  false,  true, true, 'the name of the type', '1.0a123', null);
select "schema".add_column('billing', 'transaction_types', 'display',     'string',  false, false, true, 'the short display value', '1.0a123', '1.60');
select "schema".add_column('billing', 'transaction_types', 'description', 'string',  false, false, true, 'a description of the type of payment', '1.0a123', '1.60');
select "schema".add_column('billing', 'transaction_types', 'unit',        'string',  false, false, true, 'the unit of the transaction type', '1.0a123', '1.60');
select "schema".add_column('billing', 'transaction_types', 'is_credit',   'boolean', false, false, true, 'indicates that this type of transaction represents payment or credit', '1.0a123', null);
