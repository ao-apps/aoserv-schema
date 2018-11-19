select "schema".add_column('file_backup_devices', 'pkey', 0, 'short', false, true, true, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('file_backup_devices', 'device', 1, 'long', false, true, true, 'the device number', '1.0a100', '1.30');
select "schema".add_column('file_backup_devices', 'can_backup', 2, 'boolean', false, false, true, 'indicates that the backup system is allowed to backup files on devices of this number', '1.0a100', '1.30');
select "schema".add_column('file_backup_devices', 'description', 3, 'string', false, false, true, 'a description of the device', '1.0a100', '1.30');
