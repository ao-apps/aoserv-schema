select "schema".add_column('operating_system_versions', 'pkey',                       'pkey',    false,  true, true, 'a generated, unique ID', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'operating_system',           'string',  false, false, true, 'the name of the OS', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'version_number',             'string',  false, false, true, 'the number of OS version', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'version_name',               'string',  false, false, true, 'the name of this OS release', '1.0a100', null);
select "schema".add_column('operating_system_versions', 'architecture',               'string',  false, false, true, 'the name of the architecture', '1.0a108', null);
select "schema".add_column('operating_system_versions', 'display',                    'string',  false, false, true, 'the full display name for this version', '1.0a100', '1.0a107');
select "schema".add_column('operating_system_versions', 'display',                    'string',  false,  true, true, 'the full display name for this version', '1.0a108', null);
select "schema".add_column('operating_system_versions', 'is_aoserv_daemon_supported', 'boolean', false, false, true, 'can AOServ Daemon be ran on this OS', '1.0a108', null);
select "schema".add_column('operating_system_versions', 'sort_order',                 'short',   false,  true, true, 'the default sort order', '1.3', null);
