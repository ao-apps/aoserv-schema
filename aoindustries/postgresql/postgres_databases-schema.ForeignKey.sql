select "schema".add_foreign_key('postgresql', 'postgres_databases', 'postgres_server',            'postgres_servers',      'pkey',  '1.0a100', null);
select "schema".add_foreign_key('postgresql', 'postgres_databases', 'datdba',                     'postgres_server_users', 'pkey',  '1.0a100', null);
select "schema".add_foreign_key('postgresql', 'postgres_databases', 'encoding',                   'postgres_encodings',    'pkey',  '1.0a100', null);
select "schema".add_foreign_key('postgresql', 'postgres_databases', 'backup_level',     'public', 'backup_levels',         'level', '1.0a100', '1.30');
select "schema".add_foreign_key('postgresql', 'postgres_databases', 'backup_retention', 'public', 'backup_retentions',     'days',  '1.0a100', '1.30');
