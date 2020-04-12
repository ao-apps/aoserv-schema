select "schema".add_column('backup', 'backup_reports', 'pkey',              'pkey', false,  true, false, 'a generated primary key', '1.0a101', null);
select "schema".add_column('backup', 'backup_reports', 'server',            'fkey', false, false, false, 'the pkey of the server being backed-up', '1.0a101', null);
select "schema".add_column('backup', 'backup_reports', 'package',           'fkey', false, false, false, 'the pkey of the package the data is assigned to', '1.0a101', null);
select "schema".add_column('backup', 'backup_reports', 'date',              'date', false, false, false, 'the date the summary is for', '1.0a101', null);
select "schema".add_column('backup', 'backup_reports', 'file_count',        'int',  false, false, false, 'the number of files belong to this package on this server', '1.0a101', null);
select "schema".add_column('backup', 'backup_reports', 'uncompressed_size', 'long', false, false, false, 'the total raw byte count', '1.0a101', '1.30');
select "schema".add_column('backup', 'backup_reports', 'compressed_size',   'long', false, false, false, 'the total number of bytes after compression', '1.0a101', '1.30');
select "schema".add_column('backup', 'backup_reports', 'disk_size',         'long', false, false, false, 'the total number of bytes of disk space used', '1.0a101', null);
