select "schema".add_column('operating_systems', 'name',    'string',  false,  true, true, 'the unique name of the operating system', '1.0a100', null);
select "schema".add_column('operating_systems', 'display', 'string',  false, false, true, 'the display version of the name', '1.0a100', null);
select "schema".add_column('operating_systems', 'is_unix', 'boolean', false, false, true, 'indicates that this is a Unix-based OS', '1.0a100', null);
