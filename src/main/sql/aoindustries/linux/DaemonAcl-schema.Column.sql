select "schema".add_column('linux', 'ao_server_daemon_hosts', 'pkey',      'pkey',       false,  true, false, 'a generated unique primary key', '1.0a100', null);
select "schema".add_column('linux', 'ao_server_daemon_hosts', 'ao_server', 'fkey',       false, false, false, 'the pkey of the ao_server', '1.0a100', null);
select "schema".add_column('linux', 'ao_server_daemon_hosts', 'host',      'ip_address', false, false, false, 'the hostname or IP address that is allowed to connect', '1.0a100', '1.80');
select "schema".add_column('linux', 'ao_server_daemon_hosts', 'host',      'hostname',   false, false, false, 'the hostname or IP address that is allowed to connect', '1.80.0', null);
