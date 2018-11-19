select "schema".add_foreign_key('ticket', 'ticket_brand_categories', 'brand',    'public', 'brands',            'accounting', '1.44', null);
select "schema".add_foreign_key('ticket', 'ticket_brand_categories', 'category',           'ticket_categories', 'pkey',      '1.44', null);
