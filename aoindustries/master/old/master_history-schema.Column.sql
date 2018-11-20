select "schema".add_column('master', 'master_history', 'command_id',         'long',       false,  true, false, '', '1.0a100', '1.76');
select "schema".add_column('master', 'master_history', 'process_id',         'long',       false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master', 'master_history', 'connector_id',       'long',       false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master', 'master_history', 'authenticated_user', 'username',   false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master', 'master_history', 'effective_user',     'username',   false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master', 'master_history', 'host',               'ip_address', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master', 'master_history', 'protocol',           'string',     false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master', 'master_history', 'is_secure',          'boolean',    false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master', 'master_history', 'start_time',         'time',       false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master', 'master_history', 'end_time',           'time',       false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('master', 'master_history', 'command',            'string',      true, false, false, '', '1.0a100', '1.76');
