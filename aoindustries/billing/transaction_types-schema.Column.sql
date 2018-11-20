select "schema".add_column('billing', 'transaction_types', 'name', 0, 'string', false, true, true, 'the name of the type', '1.0a123', null);
select "schema".add_column('billing', 'transaction_types', 'display', 1, 'string', false, false, true, 'the short display value', '1.0a123', '1.60');
select "schema".add_column('billing', 'transaction_types', 'description', 2, 'string', false, false, true, 'a description of the type of payment', '1.0a123', '1.60');
select "schema".add_column('billing', 'transaction_types', 'unit', 3, 'string', false, false, true, 'the unit of the transaction type', '1.0a123', '1.60');
select "schema".add_column('billing', 'transaction_types', 'is_credit', 4, 'boolean', false, false, true, 'indicates that this type of transaction represents payment or credit', '1.0a123', null);
