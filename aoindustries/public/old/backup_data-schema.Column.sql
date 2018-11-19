select "schema".add_column('backup_data', 'pkey', 'pkey', false, true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('backup_data', 'created', 'time', false, false, false, 'the time the dataset was created', '1.0a100', '1.30');
select "schema".add_column('backup_data', 'backup_partition', 'fkey', false, false, false, 'the backup partition that stores the content', '1.0a100', '1.30');
select "schema".add_column('backup_data', 'data_size', 'long', false, false, false, 'the uncompressed size of this data', '1.0a100', '1.30');
select "schema".add_column('backup_data', 'compressed_size', 'long', true, false, false, 'the compressed size of this data', '1.0a100', '1.30');
select "schema".add_column('backup_data', 'md5_hi', 'long', false, false, false, 'the 8 high-order bytes of the uncompressed data', '1.0a100', '1.30');
select "schema".add_column('backup_data', 'md5_lo', 'long', false, false, false, 'the 8 low-order bytes of the uncompressed data', '1.0a100', '1.30');
select "schema".add_column('backup_data', 'is_stored', 'boolean', false, false, false, 'indicates that the data is available on the backup_partition', '1.0a100', '1.30');
