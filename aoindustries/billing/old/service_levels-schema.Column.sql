select "schema".add_column('billing', 'service_levels', 'name',        'string',  false,  true, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'service_levels', 'display',     'string',  false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'service_levels', 'description', 'string',  false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'service_levels', 'is_virtual',  'boolean', false, false, true, '', '1.0a100', '1.0a122');
