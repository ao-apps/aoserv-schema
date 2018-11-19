select "schema".add_column('racks', 'pkey', 0, 'pkey', false, true, false, 'the unique ID for the rack', '1.36', null);
select "schema".add_column('racks', 'farm', 1, 'string', false, false, false, 'the server_farm housing the rack', '1.36', null);
select "schema".add_column('racks', 'name', 2, 'string', false, false, false, 'the per-farm unique name', '1.36', null);
select "schema".add_column('racks', 'max_power', 3, 'float', true, false, false, 'the maximum electrical load supported by the rack', '1.36', null);
select "schema".add_column('racks', 'total_rack_units', 4, 'int', true, false, false, 'the number of rack units of physical space', '1.36', null);
