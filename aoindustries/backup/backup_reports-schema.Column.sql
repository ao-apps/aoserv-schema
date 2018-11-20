select "schema".add_column('backup', 'backup_reports', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a101', null);
select "schema".add_column('backup', 'backup_reports', 'server', 1, 'fkey', false, false, false, 'the pkey of the server being backed-up', '1.0a101', null);
select "schema".add_column('backup', 'backup_reports', 'package', 2, 'fkey', false, false, false, 'the pkey of the package the data is assigned to', '1.0a101', null);
select "schema".add_column('backup', 'backup_reports', 'date', 3, 'date', false, false, false, 'the date the summary is for', '1.0a101', null);
select "schema".add_column('backup', 'backup_reports', 'file_count', 4, 'int', false, false, false, 'the number of files belong to this package on this server', '1.0a101', null);
select "schema".add_column('backup', 'backup_reports', 'uncompressed_size', 5, 'long', false, false, false, 'the total raw byte count', '1.0a101', '1.30');
select "schema".add_column('backup', 'backup_reports', 'compressed_size', 6, 'long', false, false, false, 'the total number of bytes after compression', '1.0a101', '1.30');
select "schema".add_column('backup', 'backup_reports', 'disk_size', 7, 'long', false, false, false, 'the total number of bytes of disk space used', '1.0a101', null);
