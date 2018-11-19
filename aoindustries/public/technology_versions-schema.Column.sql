select "schema".add_column('technology_versions', 'pkey', 0, 'pkey', false, true, true, 'a generated unique key', '1.0a100', null);
select "schema".add_column('technology_versions', 'name', 1, 'string', false, false, true, 'the name of the software package', '1.0a100', null);
select "schema".add_column('technology_versions', 'version', 2, 'string', false, false, true, 'the version number of the package in #.##.##-## format', '1.0a100', null);
select "schema".add_column('technology_versions', 'updated', 3, 'time', false, false, true, 'the time this package was last updated', '1.0a100', null);
select "schema".add_column('technology_versions', 'owner', 4, 'username', false, false, false, 'the business_administrator who is responsible for maintaining this package', '1.0a100', null);
select "schema".add_column('technology_versions', 'operating_system_version', 5, 'fkey', true, false, true, 'the version of the OS that this packages is installed', '1.0a108', null);
select "schema".add_column('technology_versions', 'disable_time', 6, 'time', true, false, true, 'the time this version is no longer supported', '1.78', null);
select "schema".add_column('technology_versions', 'disable_reason', 7, 'string', true, false, true, 'the reason this version is no longer supported', '1.78', null);
