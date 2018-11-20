select "schema".add_column('ticket', 'ticket_assignments', 'pkey',          'pkey',       false,  true, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_assignments', 'ticket',        'fkey',       false, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_assignments', 'reseller',      'accounting', false, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_assignments', 'administrator', 'username',   false, false, false, '', '1.44', null);
