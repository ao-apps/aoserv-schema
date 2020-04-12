select "schema".add_foreign_key('backup', 'file_backup_settings', 'server',           'net',     'servers',                    'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'file_backup_settings', 'replication',      'backup',  'failover_file_replications', 'pkey',  '1.31',    null);
select "schema".add_foreign_key('backup', 'file_backup_settings', 'package',          'billing', 'packages',                   'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'file_backup_settings', 'backup_level',     'backup',  'backup_levels',              'level', '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'file_backup_settings', 'backup_retention', 'backup',  'backup_retentions',          'days',  '1.0a100', '1.30');
