select "schema".add_foreign_key('technology_versions', 'name', 'technology_names', 'name', '1.0a100', null);
select "schema".add_foreign_key('technology_versions', 'owner', 'master_users', 'username', '1.0a100', null);
select "schema".add_foreign_key('technology_versions', 'operating_system_version', 'operating_system_versions', 'pkey', '1.0a108', null);
