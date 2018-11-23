select "schema".add_column('signup', 'signup_request_options', 'pkey',    'pkey',   false,  true, false, 'a generate unique id', '1.23', null);
select "schema".add_column('signup', 'signup_request_options', 'request', 'fkey',   false, false, false, 'the id of the request this option is part of', '1.23', null);
select "schema".add_column('signup', 'signup_request_options', 'name',    'string', false, false, false, 'the unique-per-request name of the option', '1.23', null);
select "schema".add_column('signup', 'signup_request_options', 'value',   'string',  true, false, false, 'the value of the option', '1.23', null);
