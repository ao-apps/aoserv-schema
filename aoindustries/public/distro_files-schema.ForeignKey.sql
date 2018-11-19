select "schema".add_foreign_key('distro_files', 'operating_system_version', 'operating_system_versions', 'pkey', '1.0a108', null);
select "schema".add_foreign_key('distro_files', 'type', 'distro_file_types', 'type', '1.0a100', null);
select "schema".add_foreign_key('distro_files', 'linux_account', 'linux_accounts', 'username', '1.0a100', null);
select "schema".add_foreign_key('distro_files', 'linux_group', 'linux_groups', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('distro_files', 'linux_group', 'linux_groups', 'name', '1.80.0', null);
