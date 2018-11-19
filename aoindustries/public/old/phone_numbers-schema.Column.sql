select "schema".add_column('phone_numbers', 'pkey', 0, 'pkey', false, true, false, 'a generated, unique id', '1.0a100', '1.30');
select "schema".add_column('phone_numbers', 'created', 1, 'time', false, false, false, 'time the entry was created', '1.0a100', '1.30');
select "schema".add_column('phone_numbers', 'business', 2, 'string', false, false, false, 'the name of the business', '1.0a100', '1.30');
select "schema".add_column('phone_numbers', 'person', 3, 'string', false, false, false, 'the name of the individual', '1.0a100', '1.30');
select "schema".add_column('phone_numbers', 'work', 4, 'phone', false, false, false, 'the work number', '1.0a100', '1.30');
select "schema".add_column('phone_numbers', 'cell', 5, 'phone', false, false, false, 'the cell number', '1.0a100', '1.30');
select "schema".add_column('phone_numbers', 'home', 6, 'phone', false, false, false, 'the home number', '1.0a100', '1.30');
select "schema".add_column('phone_numbers', 'fax', 7, 'phone', false, false, false, 'the fax number', '1.0a100', '1.30');
