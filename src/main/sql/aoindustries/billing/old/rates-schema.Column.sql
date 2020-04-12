select "schema".add_column('billing', 'rates', 'name',        'string',    false,  true, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'rates', 'display',     'string',    false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'rates', 'description', 'string',    false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'rates', 'unit',        'string',    false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'rates', 'price',       'decimal_2', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'rates', 'is_credit',   'boolean',   false, false, true, '', '1.0a100', '1.0a122');
