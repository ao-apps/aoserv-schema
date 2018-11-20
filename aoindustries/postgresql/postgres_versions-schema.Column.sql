select "schema".add_column('postgresql', 'postgres_versions', 'version',         'fkey',   false,  true, true, 'a reference to the PostgreSQL details in the <code>technology_versions</code> table', '1.0a100', null);
select "schema".add_column('postgresql', 'postgres_versions', 'default_port',    'int',    false,  true, true, '', '1.0a100', '1.0a109');
select "schema".add_column('postgresql', 'postgres_versions', 'minor_version',   'string', false, false, true, 'the minor version for this version (used for installation at /usr/postgresql/<minor_version>', '1.0a121', null);
select "schema".add_column('postgresql', 'postgres_versions', 'postgis_version', 'fkey',    true, false, true, 'a reference to the PostGIS defails in the <code>technology_versions</code> table', '1.27', null);
