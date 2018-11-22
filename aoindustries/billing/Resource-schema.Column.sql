select "schema".add_column('billing', 'resources', 'name',                  'string', false,  true, true, 'the name of the specific resource', '1.0a100', null);
select "schema".add_column('billing', 'resources', 'unit',                  'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'resources', 'singular_display_unit', 'string', false, false, true, 'the unit for display purposes (singular)', '1.0a123', '1.60');
select "schema".add_column('billing', 'resources', 'plural_display_unit',   'string', false, false, true, 'the unit for display purposes (plural)', '1.0a123', '1.60');
select "schema".add_column('billing', 'resources', 'per_unit',              'string', false, false, true, 'the unit for display as a "per"', '1.0a123', '1.60');
select "schema".add_column('billing', 'resources', 'description',           'string', false, false, true, 'a description of the resource', '1.0a100', '1.60');
