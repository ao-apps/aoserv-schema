select "schema".add_foreign_key('ticket_brand_categories', 'brand', 'brands', 'accounting', '1.44', null);
select "schema".add_foreign_key('ticket_brand_categories', 'category', 'ticket_categories', 'pkey', '1.44', null);
