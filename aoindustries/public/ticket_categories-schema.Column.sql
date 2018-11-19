select "schema".add_column('ticket_categories', 'pkey', 0, 'pkey', false, true, false, '', '1.44', null);
select "schema".add_column('ticket_categories', 'parent', 1, 'fkey', true, false, false, '', '1.44', null);
select "schema".add_column('ticket_categories', 'name', 2, 'string', false, false, false, '', '1.44', null);
