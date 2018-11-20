select "schema".add_foreign_key('backup', 'file_backup_roots', 'server',  'public',  'servers',  'pkey', '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'file_backup_roots', 'package', 'billing', 'packages', 'pkey', '1.0a100', '1.30');
