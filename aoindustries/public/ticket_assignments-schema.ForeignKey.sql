select "schema".add_foreign_key('ticket_assignments', 'ticket', 'tickets', 'pkey', '1.44', null);
select "schema".add_foreign_key('ticket_assignments', 'reseller', 'resellers', 'accounting', '1.44', null);
select "schema".add_foreign_key('ticket_assignments', 'administrator', 'business_administrators', 'username', '1.44', null);
