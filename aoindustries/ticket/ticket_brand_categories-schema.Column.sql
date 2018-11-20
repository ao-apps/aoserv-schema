select "schema".add_column('ticket', 'ticket_brand_categories', 'pkey',     'pkey',       false,  true, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_brand_categories', 'brand',    'accounting', false, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_brand_categories', 'category', 'fkey',       false, false, false, '', '1.44', null);
select "schema".add_column('ticket', 'ticket_brand_categories', 'enabled',  'boolean',    false, false, false, '', '1.44', null);
