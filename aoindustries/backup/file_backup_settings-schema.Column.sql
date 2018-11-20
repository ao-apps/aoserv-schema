select "schema".add_column('backup', 'file_backup_settings', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('backup', 'file_backup_settings', 'server', 1, 'fkey', false, false, false, 'the pkey of the server configured', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_settings', 'replication', 2, 'fkey', false, false, false, 'the pkey of the failover_file_replication configured', '1.31', null);
select "schema".add_column('backup', 'file_backup_settings', 'path', 3, 'string', false, false, false, 'the path to control', '1.0a100', null);
select "schema".add_column('backup', 'file_backup_settings', 'package', 4, 'fkey', false, false, false, 'the pkey of the package the files belong to', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_settings', 'backup_level', 5, 'short', false, false, false, 'the number of backup copies to keep', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_settings', 'backup_enabled', 6, 'boolean', false, false, false, 'the enabled flag for this prefix', '1.31', null);
select "schema".add_column('backup', 'file_backup_settings', 'backup_retention', 7, 'short', false, false, false, 'the number of days to keep the backup data', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_settings', 'recurse', 8, 'boolean', false, false, false, 'indicates that the backup system should recursively scan directories in <code>path</code>', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_settings', 'required', 9, 'boolean', false, false, false, 'indicates that backup pass will not be considered successful if file or path is missing', '1.62', null);
