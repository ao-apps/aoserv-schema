select "schema".add_column('infrastructure', 'disk_types', 'type',       'string', false, true, true, 'the unique name of the type of disk', '1.36', '1.41');
select "schema".add_column('infrastructure', 'disk_types', 'sort_order', 'short',  false, true, true, 'the sort order of the disk, those sorted higher may be substituted for those sorted lower', '1.36', '1.41');
