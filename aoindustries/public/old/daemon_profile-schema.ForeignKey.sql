select "schema".add_foreign_key('daemon_profile', 'server', 'servers', 'hostname', '1.0a100', '1.30');
select "schema".add_foreign_key('daemon_profile', 'ao_server', 'ao_servers', 'hostname', '1.31', '1.68');
select "schema".add_foreign_key('daemon_profile', 'ao_server', 'ao_servers', 'hostname', '1.69', '1.76');
