select "schema".add_foreign_key('backup', 'file_backups', 'server',           'net',     'servers',             'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'file_backups', 'device',           'backup',  'file_backup_devices', 'pkey',  '1.0a100', '1.0a106');
select "schema".add_foreign_key('backup', 'file_backups', 'device',           'backup',  'file_backup_devices', 'pkey',  '1.0a107', '1.30');
select "schema".add_foreign_key('backup', 'file_backups', 'package',          'billing', 'packages',            'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'file_backups', 'uid',              'linux',   'linux_ids',           'id',    '1.0a100', '1.0a106');
select "schema".add_foreign_key('backup', 'file_backups', 'uid',              'linux',   'linux_ids',           'id',    '1.0a107', '1.30');
select "schema".add_foreign_key('backup', 'file_backups', 'gid',              'linux',   'linux_ids',           'id',    '1.0a100', '1.0a106');
select "schema".add_foreign_key('backup', 'file_backups', 'gid',              'linux',   'linux_ids',           'id',    '1.0a107', '1.30');
select "schema".add_foreign_key('backup', 'file_backups', 'backup_data',      'backup',  'backup_data',         'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'file_backups', 'backup_level',     'backup',  'backup_levels',       'level', '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'file_backups', 'backup_retention', 'backup',  'backup_retentions',   'days',  '1.0a100', '1.30');
