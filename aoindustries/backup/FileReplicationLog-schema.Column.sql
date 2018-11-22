select "schema".add_column('backup', 'failover_file_log', 'pkey',          'pkey',    false,  true, false, 'a generated, unique id', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_log', 'replication',   'fkey',    false, false, false, 'the replication that was performed', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_log', 'start_time',    'time',    false, false, false, 'the time the replication started', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_log', 'end_time',      'time',    false, false, false, 'the time the replication finished', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_log', 'scanned',       'int',     false, false, false, 'the number of files scanned', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_log', 'updated',       'int',     false, false, false, 'the number of files updated', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_log', 'bytes',         'long',    false, false, false, 'the number of bytes transferred', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_log', 'is_successful', 'boolean', false, false, false, 'keeps track of which passes completed successfully', '1.0a100', null);
