select "schema".add_column('interbase', 'interbase_db_groups', 'pkey',               'pkey',   false,  true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_db_groups', 'name',               'string', false, false, false, 'the unique-per-server group name', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_db_groups', 'linux_server_group', 'fkey',   false, false, false, 'the pkey in linux_server_groups', '1.0a100', '1.30');
