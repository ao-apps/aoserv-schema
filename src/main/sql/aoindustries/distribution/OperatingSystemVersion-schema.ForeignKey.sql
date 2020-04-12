select "schema".add_foreign_key('distribution', 'operating_system_versions', 'operating_system', 'distribution', 'operating_systems', 'name', '1.0a100', null);
select "schema".add_foreign_key('distribution', 'operating_system_versions', 'architecture',     'distribution', 'architectures',     'name', '1.0a108', null);
