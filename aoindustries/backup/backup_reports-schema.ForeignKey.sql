select "schema".add_foreign_key('backup', 'backup_reports', 'server',  'public',  'servers',  'pkey', '1.0a101', null);
select "schema".add_foreign_key('backup', 'backup_reports', 'package', 'billing', 'packages', 'pkey', '1.0a101', null);
