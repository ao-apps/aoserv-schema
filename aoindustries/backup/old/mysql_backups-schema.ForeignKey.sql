select "schema".add_foreign_key('backup', 'mysql_backups', 'package',          'billing', 'packages',          'pkey',   '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'mysql_backups', 'ao_server',        'server',  'ao_servers',        'server', '1.0a100', '1.3');
select "schema".add_foreign_key('backup', 'mysql_backups', 'mysql_server',     'mysql' ,  'mysql_servers',     'pkey',   '1.4',     '1.30');
select "schema".add_foreign_key('backup', 'mysql_backups', 'backup_data',                 'backup_data',       'pkey',   '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'mysql_backups', 'backup_level',                'backup_levels',     'level',  '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'mysql_backups', 'backup_retention',            'backup_retentions', 'days',   '1.0a100', '1.30');
