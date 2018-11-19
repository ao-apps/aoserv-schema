select "schema".add_foreign_key('postgresql', 'postgres_backups', 'package',          'public', 'packages',          'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('postgresql', 'postgres_backups', 'postgres_server',            'postgres_servers',  'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('postgresql', 'postgres_backups', 'backup_data',      'public', 'backup_data',       'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('postgresql', 'postgres_backups', 'backup_level',     'public', 'backup_levels',     'level', '1.0a100', '1.30');
select "schema".add_foreign_key('postgresql', 'postgres_backups', 'backup_retention', 'public', 'backup_retentions', 'days',  '1.0a100', '1.30');
