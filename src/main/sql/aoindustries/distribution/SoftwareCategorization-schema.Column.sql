select "schema".add_column('distribution', 'technologies', 'pkey',  'pkey',   false,  true, true, 'the unique identifier', '1.4', null);
select "schema".add_column('distribution', 'technologies', 'name',  'string', false, false, true, 'the name of the package', '1.0a100', null);
select "schema".add_column('distribution', 'technologies', 'class', 'string', false, false, true, 'the name of the group this package belongs to', '1.0a100', null);
