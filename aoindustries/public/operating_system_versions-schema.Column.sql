select "schema".add_column('operating_system_versions', 'pkey', 0, 'pkey', false, true, true, 'a generated, unique ID', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'operating_system', 1, 'string', false, false, true, 'the name of the OS', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'version_number', 2, 'string', false, false, true, 'the number of OS version', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'version_name', 3, 'string', false, false, true, 'the name of this OS release', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'architecture', 4, 'string', false, false, true, 'the name of the architecture', '1.0a108', null);
select "schema".add_column('operating_system_versions', 'display', 5, 'string', false, false, true, 'the full display name for this version', '1.0a100', '1.0a107');
select "schema".add_column('operating_system_versions', 'display', 6, 'string', false, true, true, 'the full display name for this version', '1.0a108', null);
select "schema".add_column('operating_system_versions', 'is_aoserv_daemon_supported', 7, 'boolean', false, false, true, 'can AOServ Daemon be ran on this OS', '1.0a108', null);
select "schema".add_column('operating_system_versions', 'sort_order', 8, 'short', false, true, true, 'the default sort order', '1.3', null);
