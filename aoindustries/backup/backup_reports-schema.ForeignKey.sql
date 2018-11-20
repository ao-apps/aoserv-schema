select "schema".add_foreign_key('backup', 'backup_reports', 'server',  'public', 'servers',  'pkey', '1.0a101', null);
select "schema".add_foreign_key('backup', 'backup_reports', 'package', 'public', 'packages', 'pkey', '1.0a101', null);
