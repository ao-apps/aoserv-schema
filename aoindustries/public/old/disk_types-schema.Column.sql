select "schema".add_column('disk_types', 'type', 0, 'string', false, true, true, 'the unique name of the type of disk', '1.36', '1.41');
select "schema".add_column('disk_types', 'sort_order', 1, 'short', false, true, true, 'the sort order of the disk, those sorted higher may be substituted for those sorted lower', '1.36', '1.41');
