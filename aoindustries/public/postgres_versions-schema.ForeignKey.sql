select "schema".add_foreign_key('postgres_versions', 'version', 'technology_versions', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('postgres_versions', 'default_port', 'net_ports', 'port', '1.0a100', '1.0a109');
select "schema".add_foreign_key('postgres_versions', 'postgis_version', 'technology_versions', 'pkey', '1.27', null);
