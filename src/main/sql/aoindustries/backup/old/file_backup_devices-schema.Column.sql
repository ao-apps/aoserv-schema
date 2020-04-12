select "schema".add_column('backup', 'file_backup_devices', 'pkey',        'short',   false,  true, true, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_devices', 'device',      'long',    false,  true, true, 'the device number', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_devices', 'can_backup',  'boolean', false, false, true, 'indicates that the backup system is allowed to backup files on devices of this number', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_devices', 'description', 'string',  false, false, true, 'a description of the device', '1.0a100', '1.30');
