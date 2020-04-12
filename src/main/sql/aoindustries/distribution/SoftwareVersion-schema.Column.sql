select "schema".add_column('distribution', 'technology_versions', 'pkey',                     'pkey',     false,  true,  true, 'a generated unique key', '1.0a100', null);
select "schema".add_column('distribution', 'technology_versions', 'name',                     'string',   false, false,  true, 'the name of the software package', '1.0a100', null);
select "schema".add_column('distribution', 'technology_versions', 'version',                  'string',   false, false,  true, 'the version number of the package in #.##.##-## format', '1.0a100', null);
select "schema".add_column('distribution', 'technology_versions', 'updated',                  'time',     false, false,  true, 'the time this package was last updated', '1.0a100', null);
select "schema".add_column('distribution', 'technology_versions', 'owner',                    'username', false, false, false, 'the business_administrator who is responsible for maintaining this package', '1.0a100', null);
select "schema".add_column('distribution', 'technology_versions', 'operating_system_version', 'fkey',      true, false,  true, 'the version of the OS that this packages is installed', '1.0a108', null);
select "schema".add_column('distribution', 'technology_versions', 'disable_time',             'time',      true, false,  true, 'the time this version is no longer supported', '1.78', null);
select "schema".add_column('distribution', 'technology_versions', 'disable_reason',           'string',    true, false,  true, 'the reason this version is no longer supported', '1.78', null);
