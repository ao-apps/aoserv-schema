select "schema".add_column('reseller', 'ticket_categories', 'pkey',   'pkey',   false,  true, false, '', '1.44', null);
select "schema".add_column('reseller', 'ticket_categories', 'parent', 'fkey',    true, false, false, '', '1.44', null);
select "schema".add_column('reseller', 'ticket_categories', 'name',   'string', false, false, false, '', '1.44', null);