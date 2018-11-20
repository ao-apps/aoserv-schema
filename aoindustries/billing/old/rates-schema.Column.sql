select "schema".add_column('billing', 'rates', 'name', 0, 'string', false, true, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'rates', 'display', 1, 'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'rates', 'description', 2, 'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'rates', 'unit', 3, 'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'rates', 'price', 4, 'decimal_2', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'rates', 'is_credit', 5, 'boolean', false, false, true, '', '1.0a100', '1.0a122');
