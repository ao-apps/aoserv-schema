select "schema".add_foreign_key('interbase', 'interbase_databases', 'db_group',         'interbase', 'interbase_db_groups',    'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('interbase', 'interbase_databases', 'datdba',           'interbase', 'interbase_server_users', 'pkey',  '1.0a100', '1.30');
select "schema".add_foreign_key('interbase', 'interbase_databases', 'backup_level',     'backup',    'backup_levels',          'level', '1.0a114', '1.30');
select "schema".add_foreign_key('interbase', 'interbase_databases', 'backup_retention', 'backup',    'backup_retentions',      'days',  '1.0a114', '1.30');
