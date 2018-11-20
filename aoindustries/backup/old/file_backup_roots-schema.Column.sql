select "schema".add_column('backup', 'file_backup_roots', 'pkey', 0, 'pkey', false, true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_roots', 'path', 1, 'string', false, false, false, 'the pkey in file_paths for the path of this file', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_roots', 'server', 2, 'fkey', false, false, false, 'the server that the file resides on', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_roots', 'package', 3, 'fkey', false, false, false, 'the number of the package that owns the file', '1.0a100', '1.30');
