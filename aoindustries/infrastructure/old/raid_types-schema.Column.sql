select "schema".add_column('infrastructure', 'raid_types', 'type', 0, 'string', false, true, true, 'the unique name of the type of RAID configuration', '1.36', '1.41');
select "schema".add_column('infrastructure', 'raid_types', 'sort_order', 1, 'short', false, true, true, 'the sort order of the RAID type, those sorted higher may be substituted for those sorted lower', '1.36', '1.41');
