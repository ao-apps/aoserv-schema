select "schema".add_column('interbase', 'interbase_databases', 'pkey',             'pkey',   false,  true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_databases', 'name',             'string', false, false, false, 'the unique-per-server group name', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_databases', 'db_group',         'string', false, false, false, 'the pkey in interbase_db_groups', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_databases', 'datdba',           'fkey',   false, false, false, 'the pkey in interbase_server_users', '1.0a100', '1.30');
select "schema".add_column('interbase', 'interbase_databases', 'backup_retention', 'int',    false, false, false, 'the number of days backups will be kept', '1.0a100', '1.0a113');
select "schema".add_column('interbase', 'interbase_databases', 'backup_level',     'short',  false, false, false, 'the number of backup copies to keep', '1.0a114', '1.30');
select "schema".add_column('interbase', 'interbase_databases', 'backup_retention', 'short',  false, false, false, 'the number of days backups will be kept', '1.0a114', '1.30');
