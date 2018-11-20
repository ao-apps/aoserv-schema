select "schema".add_foreign_key('backup', 'file_backup_settings', 'server',           'public', 'servers',                    'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'file_backup_settings', 'replication',                'failover_file_replications', 'pkey',  '1.31',    null);
select "schema".add_foreign_key('backup', 'file_backup_settings', 'package',          'public', 'packages',                   'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'file_backup_settings', 'backup_level',               'backup_levels',              'level', '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'file_backup_settings', 'backup_retention',           'backup_retentions',          'days',  '1.0a100', '1.30');
