select "schema".add_column('mysql', 'mysql_backups', 'pkey', 0, 'pkey', false, true, false, 'a unique, generated primary key', '1.0a100', '1.30');
select "schema".add_column('mysql', 'mysql_backups', 'package', 1, 'fkey', false, false, false, 'the pkey of package that owns this backup', '1.0a100', '1.30');
select "schema".add_column('mysql', 'mysql_backups', 'db_name', 2, 'string', false, false, false, 'the name of the database', '1.0a100', '1.30');
select "schema".add_column('mysql', 'mysql_backups', 'ao_server', 3, 'fkey', false, false, false, 'the pkey of the server that this database was backed-up from', '1.0a100', '1.3');
select "schema".add_column('mysql', 'mysql_backups', 'mysql_server', 4, 'fkey', false, false, false, 'the pkey of the MySQL server that this database was backed-up from', '1.4', '1.30');
select "schema".add_column('mysql', 'mysql_backups', 'start_time', 5, 'time', false, false, false, 'the time the backup was started', '1.0a100', '1.30');
select "schema".add_column('mysql', 'mysql_backups', 'end_time', 6, 'time', false, false, false, 'the time the backup was completed', '1.0a100', '1.30');
select "schema".add_column('mysql', 'mysql_backups', 'backup_data', 7, 'fkey', false, false, false, 'the data store for this backup', '1.0a100', '1.30');
select "schema".add_column('mysql', 'mysql_backups', 'backup_level', 8, 'short', false, false, false, 'the number of backup copies to keep', '1.0a100', '1.30');
select "schema".add_column('mysql', 'mysql_backups', 'backup_retention', 9, 'short', false, false, false, 'the number of days to keep the backup data', '1.0a100', '1.30');
