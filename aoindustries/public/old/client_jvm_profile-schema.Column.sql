select "schema".add_column('client_jvm_profile', 'level', 0, 'int', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('client_jvm_profile', 'classname', 1, 'string', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('client_jvm_profile', 'method_name', 2, 'string', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('client_jvm_profile', 'parameter', 3, 'string', true, false, false, '', '1.0a100', '1.76');
select "schema".add_column('client_jvm_profile', 'use_count', 4, 'long', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('client_jvm_profile', 'total_time', 5, 'interval', false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('client_jvm_profile', 'min_time', 6, 'interval', true, false, false, '', '1.0a100', '1.76');
select "schema".add_column('client_jvm_profile', 'max_time', 7, 'interval', true, false, false, '', '1.0a100', '1.76');
