select "schema".add_foreign_key('postgresql', 'postgres_databases', 'postgres_server',  'postgresql', 'postgres_servers',      'pkey',  '1.0a100', '1.81.17');
select "schema".add_foreign_key('postgresql', 'postgres_databases', 'postgres_server',  'postgresql', 'postgres_servers',      'bind',  '1.81.18', null);
select "schema".add_foreign_key('postgresql', 'postgres_databases', 'datdba',           'postgresql', 'postgres_server_users', 'pkey',  '1.0a100', null);
select "schema".add_foreign_key('postgresql', 'postgres_databases', 'encoding',         'postgresql', 'postgres_encodings',    'pkey',  '1.0a100', null);
select "schema".add_foreign_key('postgresql', 'postgres_databases', 'backup_level',     'backup',     'backup_levels',         'level', '1.0a100', '1.30');
select "schema".add_foreign_key('postgresql', 'postgres_databases', 'backup_retention', 'backup',     'backup_retentions',     'days',  '1.0a100', '1.30');
