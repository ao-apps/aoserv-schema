select "schema".add_column('failover_file_log', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique id', '1.0a100', null);
select "schema".add_column('failover_file_log', 'replication', 1, 'fkey', false, false, false, 'the replication that was performed', '1.0a100', null);
select "schema".add_column('failover_file_log', 'start_time', 2, 'time', false, false, false, 'the time the replication started', '1.0a100', null);
select "schema".add_column('failover_file_log', 'end_time', 3, 'time', false, false, false, 'the time the replication finished', '1.0a100', null);
select "schema".add_column('failover_file_log', 'scanned', 4, 'int', false, false, false, 'the number of files scanned', '1.0a100', null);
select "schema".add_column('failover_file_log', 'updated', 5, 'int', false, false, false, 'the number of files updated', '1.0a100', null);
select "schema".add_column('failover_file_log', 'bytes', 6, 'long', false, false, false, 'the number of bytes transferred', '1.0a100', null);
select "schema".add_column('failover_file_log', 'is_successful', 7, 'boolean', false, false, false, 'keeps track of which passes completed successfully', '1.0a100', null);
