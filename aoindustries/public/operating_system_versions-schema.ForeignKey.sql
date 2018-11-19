select "schema".add_foreign_key('operating_system_versions', 'operating_system', 'operating_systems', 'name', '1.0a100', null);
select "schema".add_foreign_key('operating_system_versions', 'architecture', 'architectures', 'name', '1.0a108', null);
