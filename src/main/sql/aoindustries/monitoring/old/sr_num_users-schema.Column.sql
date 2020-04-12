select "schema".add_column('monitoring', 'sr_num_users', 'server_report', 'fkey',  false,  true, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_num_users', 'min',           'int',   false, false, false, 'minimum concurrent users', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_num_users', 'avg',           'float', false, false, false, 'average concurrent users', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_num_users', 'max',           'int',   false, false, false, 'maximum concurrent users', '1.0a100', '1.30');
