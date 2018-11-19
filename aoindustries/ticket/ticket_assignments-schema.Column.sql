select "schema".add_column('ticket', 'ticket_assignments', 'pkey', 0, 'pkey', false, true, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_assignments', 'ticket', 1, 'fkey', false, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_assignments', 'reseller', 2, 'accounting', false, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_assignments', 'administrator', 3, 'username', false, false, false, '', '1.44', null);
