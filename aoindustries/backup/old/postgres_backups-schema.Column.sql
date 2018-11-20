select "schema".add_column('backup', 'postgres_backups', 'pkey',             'pkey',   false,  true, false, 'a unique, generated primary key', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'package',          'fkey',   false, false, false, 'the pkey of the package that owns this backup', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'db_name',          'string', false, false, false, 'the name of the database', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'postgres_server',  'fkey',   false, false, false, 'the pkey of the PostgreSQL server', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'start_time',       'time',   false, false, false, 'the time the backup was started', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'end_time',         'time',   false, false, false, 'the time the backup was completed', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'backup_data',      'fkey',   false, false, false, 'the pkey of the backup_data', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'backup_level',     'short',  false, false, false, 'the number of backup copies to store', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'backup_retention', 'short',  false, false, false, 'the number of days to store the backup data', '1.0a100', '1.30');
