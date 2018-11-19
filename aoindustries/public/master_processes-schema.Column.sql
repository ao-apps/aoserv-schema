select "schema".add_column('master_processes', 'process_id', 0, 'long', false, true, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'connector_id', 1, 'long', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'authenticated_user', 2, 'username', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'effective_user', 3, 'username', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'daemon_server', 4, 'fkey', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'host', 5, 'ip_address', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'protocol', 6, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'aoserv_protocol', 7, 'string', true, false, false, '', '1.0a101', null);
select "schema".add_column('master_processes', 'is_secure', 8, 'boolean', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'connect_time', 9, 'time', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'use_count', 10, 'long', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'total_time', 11, 'interval', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'priority', 12, 'int', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'state', 13, 'string', false, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'command', 14, 'string', true, false, false, '', '1.0a100', null);
select "schema".add_column('master_processes', 'state_start_time', 15, 'time', false, false, false, '', '1.0a100', null);