select "schema".add_column('servers', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique ID', '1.0a100', null);
select "schema".add_column('servers', 'hostname', 1, 'hostname', false, true, false, 'the unique hostname of the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'farm', 2, 'string', false, false, false, 'the name of the farm the server is located in', '1.0a100', null);
select "schema".add_column('servers', 'owner', 3, 'accounting', false, false, false, 'the business that owns the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'administrator', 4, 'username', false, false, false, 'the primary administrator of the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'description', 5, 'string', false, false, false, 'a description of the servers purpose', '1.0a100', null);
select "schema".add_column('servers', 'architecture', 6, 'string', false, false, false, '', '1.0a100', '1.0a107');
select "schema".add_column('servers', 'backup_hour', 7, 'int', false, false, false, 'the hour of the day the backup will occur, in server time zone', '1.0a100', '1.30');
select "schema".add_column('servers', 'last_backup_time', 8, 'time', true, false, false, 'the time the last backup was started', '1.0a100', '1.30');
select "schema".add_column('servers', 'operating_system_version', 9, 'fkey', false, false, false, 'the version of operating system running on the server', '1.0a100', '1.30');
select "schema".add_column('servers', 'operating_system_version', 10, 'fkey', true, false, false, 'the version of operating system running on the server, if known', '1.31', null);
select "schema".add_column('servers', 'asset_label', 11, 'string', true, false, false, 'the value contained on any asset label', '1.0a108', '1.30');
select "schema".add_column('servers', 'minimum_power', 12, 'float', true, false, false, 'the minimum power consumption in amps', '1.16', '1.30');
select "schema".add_column('servers', 'maximum_power', 13, 'float', true, false, false, 'the maximum power consumption in amps', '1.16', '1.30');
select "schema".add_column('servers', 'package', 14, 'fkey', false, false, false, 'the package accountable for resources used by the server', '1.31', null);
select "schema".add_column('servers', 'name', 15, 'string', false, false, false, 'the per-package unique name of the server (no special formatting required)', '1.31', null);
select "schema".add_column('servers', 'monitoring_enabled', 16, 'boolean', false, false, false, 'enables/disables monitoring', '1.32', null);
