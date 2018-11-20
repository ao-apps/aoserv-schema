select "schema".add_foreign_key('postgresql', 'postgres_versions', 'version',         'public', 'technology_versions', 'pkey', '1.0a100', null);
select "schema".add_foreign_key('postgresql', 'postgres_versions', 'default_port',    'net',    'net_ports',           'port', '1.0a100', '1.0a109');
select "schema".add_foreign_key('postgresql', 'postgres_versions', 'postgis_version', 'public', 'technology_versions', 'pkey', '1.27',    null);
