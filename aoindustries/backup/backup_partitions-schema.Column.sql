select "schema".add_column('backup', 'backup_partitions', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('backup', 'backup_partitions', 'ao_server', 1, 'fkey', false, false, false, 'the pkey of the server that stores the backup data', '1.0a100', null);
select "schema".add_column('backup', 'backup_partitions', 'device', 2, 'string', false, false, false, 'the full path to the device file (compared to the df command)', '1.0a100', '1.30');
select "schema".add_column('backup', 'backup_partitions', 'path', 3, 'path', false, false, false, 'the full path to the root of the backup data', '1.0a100', null);
select "schema".add_column('backup', 'backup_partitions', 'minimum_free_space', 4, 'long', false, false, false, 'the minimum free space in bytes', '1.0a100', '1.30');
select "schema".add_column('backup', 'backup_partitions', 'desired_free_space', 5, 'long', false, false, false, 'when the minimum free space has been reached, data is moved off of the partition until the desired space is available', '1.0a100', '1.30');
select "schema".add_column('backup', 'backup_partitions', 'enabled', 6, 'boolean', false, false, false, 'flags the partition as currently accepting new data', '1.0a100', null);
select "schema".add_column('backup', 'backup_partitions', 'fill_order', 7, 'int', false, false, false, 'partitions with lower fill_orders are filled first', '1.0a117', '1.30');
