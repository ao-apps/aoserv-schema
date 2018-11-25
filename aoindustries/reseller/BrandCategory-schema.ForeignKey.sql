select "schema".add_foreign_key('reseller', 'ticket_brand_categories', 'brand',    'reseller', 'brands',            'accounting', '1.44', null);
select "schema".add_foreign_key('reseller', 'ticket_brand_categories', 'category', 'reseller', 'ticket_categories', 'pkey',      '1.44', null);
