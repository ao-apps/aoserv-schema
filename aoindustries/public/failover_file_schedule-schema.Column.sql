select "schema".add_column('failover_file_schedule', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique id', '1.0a100', null);
select "schema".add_column('failover_file_schedule', 'replication', 1, 'fkey', false, false, false, 'the replication that will be started', '1.0a100', null);
select "schema".add_column('failover_file_schedule', 'hour', 2, 'short', false, false, false, 'the hour of day (in server timezone)', '1.0a100', null);
select "schema".add_column('failover_file_schedule', 'minute', 3, 'short', false, false, false, 'the minute (in server timezone)', '1.31', null);
select "schema".add_column('failover_file_schedule', 'enabled', 4, 'boolean', false, false, false, '', '1.0a100', null);
