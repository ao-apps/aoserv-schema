select "schema".add_column('backup', 'backup_retentions', 'days',    'short',  false,  true, true, 'the number of days to keep the backup data', '1.0a100', null);
select "schema".add_column('backup', 'backup_retentions', 'display', 'string', false, false, true, 'the text displayed for this time increment', '1.0a100', null);
