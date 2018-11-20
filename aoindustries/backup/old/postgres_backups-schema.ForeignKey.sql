select "schema".add_foreign_key('backup', 'postgres_backups', 'package',          'public',     'packages',          'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'postgres_backups', 'postgres_server',  'postgresql', 'postgres_servers',  'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'postgres_backups', 'backup_data',                    'backup_data',       'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'postgres_backups', 'backup_level',                   'backup_levels',     'level', '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'postgres_backups', 'backup_retention',               'backup_retentions', 'days',  '1.0a100', '1.30');
