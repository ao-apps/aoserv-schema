select "schema".add_column('actions', 'pkey', 'pkey', false, true, false, '', '1.0a100', '1.43');
select "schema".add_column('actions', 'ticket_id', 'fkey', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('actions', 'administrator', 'username', false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('actions', 'time', 'time', false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('actions', 'action_type', 'string', false, false, false, '', '1.0a100', '1.43');
select "schema".add_column('actions', 'old_value', 'string', true, false, false, '', '1.0a100', '1.43');
select "schema".add_column('actions', 'comments', 'string', true, false, false, '', '1.0a100', '1.43');
