select "schema".add_foreign_key('public', 'operating_system_versions', 'operating_system', 'public', 'operating_systems', 'name', '1.0a100', null);
select "schema".add_foreign_key('public', 'operating_system_versions', 'architecture',     'public', 'architectures',     'name', '1.0a108', null);
