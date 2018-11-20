select "schema".add_column('infrastructure', 'processor_types', 'type', 0, 'string', false, true, true, 'the unique name of the type of processor', '1.36', null);
select "schema".add_column('infrastructure', 'processor_types', 'sort_order', 1, 'short', false, true, true, 'the sort order of the processor, those sorted higher may be substituted for those sorted lower', '1.36', null);
