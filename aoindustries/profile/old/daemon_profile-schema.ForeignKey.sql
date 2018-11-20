select "schema".add_foreign_key('profile', 'daemon_profile', 'server',    'server', 'servers',    'hostname', '1.0a100', '1.30');
select "schema".add_foreign_key('profile', 'daemon_profile', 'ao_server', 'server', 'ao_servers', 'hostname', '1.31',    '1.68');
select "schema".add_foreign_key('profile', 'daemon_profile', 'ao_server', 'server', 'ao_servers', 'hostname', '1.69',    '1.76');
