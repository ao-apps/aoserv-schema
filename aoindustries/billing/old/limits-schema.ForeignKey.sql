select "schema".add_foreign_key('billing', 'limits', 'service_level', 'billing', 'service_levels', 'name', '1.0a100', '1.0a122');
select "schema".add_foreign_key('billing', 'limits', 'resource',      'billing', 'resources',      'name', '1.0a100', '1.0a122');
