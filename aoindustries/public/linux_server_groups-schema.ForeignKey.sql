select "schema".add_foreign_key('linux_server_groups', 'name', 'linux_groups', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('linux_server_groups', 'name', 'linux_groups', 'name', '1.80.0', null);
select "schema".add_foreign_key('linux_server_groups', 'ao_server', 'ao_servers', 'server', '1.0a100', null);
select "schema".add_foreign_key('linux_server_groups', 'gid', 'linux_ids', 'id', '1.0a100', '1.68');
select "schema".add_foreign_key('linux_server_groups', 'gid', 'linux_ids', 'id', '1.69', '1.80');
