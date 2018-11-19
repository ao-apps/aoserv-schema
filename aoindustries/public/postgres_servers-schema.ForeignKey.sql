select "schema".add_foreign_key('postgres_servers', 'ao_server', 'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('postgres_servers', 'version', 'postgres_versions', 'version', '1.0a100', null);
select "schema".add_foreign_key('postgres_servers', 'net_bind', 'net_binds', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('postgres_servers', 'last_postgres_usesysid', 'linux_ids', 'id', '1.0a100', '1.0a130');
