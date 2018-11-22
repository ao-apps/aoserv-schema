select "schema".add_column('backup', 'failover_file_schedule', 'pkey',        'pkey',    false,  true, false, 'a generated, unique id', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_schedule', 'replication', 'fkey',    false, false, false, 'the replication that will be started', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_schedule', 'hour',        'short',   false, false, false, 'the hour of day (in server timezone)', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_schedule', 'minute',      'short',   false, false, false, 'the minute (in server timezone)', '1.31', null);
select "schema".add_column('backup', 'failover_file_schedule', 'enabled',     'boolean', false, false, false, '', '1.0a100', null);
