select "schema".add_column('monitoring', 'sr_db_postgres', 'server_report', 'fkey',  false,  true, false, '', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_postgres', 'conn_min',      'int',   false, false, false, 'minimum concurrent users', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_postgres', 'conn_avg',      'float', false, false, false, 'average concurrent users', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'sr_db_postgres', 'conn_max',      'int',   false, false, false, 'maximum concurrent users', '1.0a100', '1.30');
