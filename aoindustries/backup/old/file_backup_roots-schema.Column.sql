select "schema".add_column('backup', 'file_backup_roots', 'pkey',    'pkey',   false,  true, false, 'a generated primary key', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_roots', 'path',    'string', false, false, false, 'the pkey in file_paths for the path of this file', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_roots', 'server',  'fkey',   false, false, false, 'the server that the file resides on', '1.0a100', '1.30');
select "schema".add_column('backup', 'file_backup_roots', 'package', 'fkey',   false, false, false, 'the number of the package that owns the file', '1.0a100', '1.30');
