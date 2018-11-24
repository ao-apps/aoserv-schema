select "schema".add_foreign_key('backup', 'interbase_backups', 'package',          'billing', 'packages',          'pkey',   '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'interbase_backups', 'ao_server',        'linux' ,  'ao_servers',        'server', '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'interbase_backups', 'backup_data',      'backup',  'backup_data',       'pkey',   '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'interbase_backups', 'backup_level',     'backup',  'backup_levels',     'level',  '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'interbase_backups', 'backup_retention', 'backup',  'backup_retentions', 'days',   '1.0a100', '1.30');
