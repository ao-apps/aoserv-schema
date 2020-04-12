select "schema".add_column('profile', 'master_server_profile', 'level',       'int',      false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'master_server_profile', 'classname',   'string',   false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'master_server_profile', 'method_name', 'string',   false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'master_server_profile', 'parameter',   'string',    true, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'master_server_profile', 'use_count',   'long',     false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'master_server_profile', 'total_time',  'interval', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'master_server_profile', 'min_time',    'interval',  true, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'master_server_profile', 'max_time',    'interval',  true, false, false, '', '1.0a100', '1.76');
