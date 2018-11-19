select "schema".add_foreign_key('postgres_backups', 'package', 'packages', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('postgres_backups', 'postgres_server', 'postgres_servers', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('postgres_backups', 'backup_data', 'backup_data', 'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('postgres_backups', 'backup_level', 'backup_levels', 'level', '1.0a100', '1.30');
select "schema".add_foreign_key('postgres_backups', 'backup_retention', 'backup_retentions', 'days', '1.0a100', '1.30');
