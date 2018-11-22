select "schema".add_foreign_key('distribution', 'technology_versions', 'name',                     'distribution', 'technology_names',          'name',     '1.0a100', null);
select "schema".add_foreign_key('distribution', 'technology_versions', 'owner',                    'master',       'master_users',              'username', '1.0a100', null);
select "schema".add_foreign_key('distribution', 'technology_versions', 'operating_system_version', 'distribution', 'operating_system_versions', 'pkey',     '1.0a108', null);
