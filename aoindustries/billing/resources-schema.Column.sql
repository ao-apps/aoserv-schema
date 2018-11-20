select "schema".add_column('billing', 'resources', 'name', 0, 'string', false, true, true, 'the name of the specific resource', '1.0a100', null);
select "schema".add_column('billing', 'resources', 'unit', 1, 'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'resources', 'singular_display_unit', 2, 'string', false, false, true, 'the unit for display purposes (singular)', '1.0a123', '1.60');
select "schema".add_column('billing', 'resources', 'plural_display_unit', 3, 'string', false, false, true, 'the unit for display purposes (plural)', '1.0a123', '1.60');
select "schema".add_column('billing', 'resources', 'per_unit', 4, 'string', false, false, true, 'the unit for display as a "per"', '1.0a123', '1.60');
select "schema".add_column('billing', 'resources', 'description', 5, 'string', false, false, true, 'a description of the resource', '1.0a100', '1.60');
