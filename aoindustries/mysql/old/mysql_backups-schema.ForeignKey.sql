select "schema".add_foreign_key('mysql', 'mysql_backups', 'package',          'public', 'packages',          'pkey',   '1.0a100', '1.30');
select "schema".add_foreign_key('mysql', 'mysql_backups', 'ao_server',        'public', 'ao_servers',        'server', '1.0a100', '1.3');
select "schema".add_foreign_key('mysql', 'mysql_backups', 'mysql_server',               'mysql_servers',     'pkey',   '1.4',     '1.30');
select "schema".add_foreign_key('mysql', 'mysql_backups', 'backup_data',      'public', 'backup_data',       'pkey',   '1.0a100', '1.30');
select "schema".add_foreign_key('mysql', 'mysql_backups', 'backup_level',     'public', 'backup_levels',     'level',  '1.0a100', '1.30');
select "schema".add_foreign_key('mysql', 'mysql_backups', 'backup_retention', 'public', 'backup_retentions', 'days',   '1.0a100', '1.30');
