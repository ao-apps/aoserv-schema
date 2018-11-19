select "schema".add_column('master_history', 'command_id', 0, 'long', false, true, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'process_id', 1, 'long', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'connector_id', 2, 'long', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'authenticated_user', 3, 'username', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'effective_user', 4, 'username', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'host', 5, 'ip_address', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'protocol', 6, 'string', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'is_secure', 7, 'boolean', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'start_time', 8, 'time', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'end_time', 9, 'time', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master_history', 'command', 10, 'string', true, false, false, '', '1.0a100', '1.76');
-- Note: It seems we did not have foreign keys for "authenticated_user" and "effective_user", which should have both gone to business_administrators.username
