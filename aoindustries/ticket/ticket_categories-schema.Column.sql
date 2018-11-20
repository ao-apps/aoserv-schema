select "schema".add_column('ticket', 'ticket_categories', 'pkey',   'pkey',   false,  true, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_categories', 'parent', 'fkey',    true, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_categories', 'name',   'string', false, false, false, '', '1.44', null);
