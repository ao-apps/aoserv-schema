select "schema".add_column('backup', 'postgres_backups', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'package', 1, 'fkey', false, false, false, 'the pkey of the package that owns this backup', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'db_name', 2, 'string', false, false, false, 'the name of the database', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'postgres_server', 3, 'fkey', false, false, false, 'the pkey of the PostgreSQL server', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'start_time', 4, 'time', false, false, false, 'the time the backup was started', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'end_time', 5, 'time', false, false, false, 'the time the backup was completed', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'backup_data', 6, 'fkey', false, false, false, 'the pkey of the backup_data', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'backup_level', 7, 'short', false, false, false, 'the number of backup copies to store', '1.0a100', '1.30');
select "schema".add_column('backup', 'postgres_backups', 'backup_retention', 8, 'short', false, false, false, 'the number of days to store the backup data', '1.0a100', '1.30');
