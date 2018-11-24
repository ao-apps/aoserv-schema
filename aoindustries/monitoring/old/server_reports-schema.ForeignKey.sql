select "schema".add_foreign_key('monitoring', 'server_reports', 'ao_server',       'linux', 'ao_servers', 'server', '1.0a100', '1.30');
select "schema".add_foreign_key('monitoring', 'server_reports', 'failover_server', 'linux', 'ao_servers', 'server', '1.0a100', '1.30');
