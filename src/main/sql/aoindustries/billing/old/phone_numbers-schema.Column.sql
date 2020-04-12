select "schema".add_column('billing', 'phone_numbers', 'pkey',     'pkey',   false,  true, false, 'a generated, unique id', '1.0a100', '1.30');
select "schema".add_column('billing', 'phone_numbers', 'created',  'time',   false, false, false, 'time the entry was created', '1.0a100', '1.30');
select "schema".add_column('billing', 'phone_numbers', 'business', 'string', false, false, false, 'the name of the business', '1.0a100', '1.30');
select "schema".add_column('billing', 'phone_numbers', 'person',   'string', false, false, false, 'the name of the individual', '1.0a100', '1.30');
select "schema".add_column('billing', 'phone_numbers', 'work',     'phone',  false, false, false, 'the work number', '1.0a100', '1.30');
select "schema".add_column('billing', 'phone_numbers', 'cell',     'phone',  false, false, false, 'the cell number', '1.0a100', '1.30');
select "schema".add_column('billing', 'phone_numbers', 'home',     'phone',  false, false, false, 'the home number', '1.0a100', '1.30');
select "schema".add_column('billing', 'phone_numbers', 'fax',      'phone',  false, false, false, 'the fax number', '1.0a100', '1.30');
