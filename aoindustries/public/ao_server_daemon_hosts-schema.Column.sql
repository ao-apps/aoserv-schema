select "schema".add_column('ao_server_daemon_hosts', 'pkey', 0, 'pkey', false, true, false, 'a generated unique primary key', '1.0a100', null);
select "schema".add_column('ao_server_daemon_hosts', 'ao_server', 1, 'fkey', false, false, false, 'the pkey of the ao_server', '1.0a100', null);
select "schema".add_column('ao_server_daemon_hosts', 'host', 2, 'ip_address', false, false, false, 'the hostname or IP address that is allowed to connect', '1.0a100', '1.80');
select "schema".add_column('ao_server_daemon_hosts', 'host', 3, 'hostname', false, false, false, 'the hostname or IP address that is allowed to connect', '1.80.0', null);
