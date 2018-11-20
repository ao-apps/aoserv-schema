select "schema".add_foreign_key('ticket', 'ticket_assignments', 'ticket',                   'tickets',                 'pkey',       '1.44', null);
select "schema".add_foreign_key('ticket', 'ticket_assignments', 'reseller',      'public',  'resellers',               'accounting', '1.44', null);
select "schema".add_foreign_key('ticket', 'ticket_assignments', 'administrator', 'account', 'business_administrators', 'username',   '1.44', null);
