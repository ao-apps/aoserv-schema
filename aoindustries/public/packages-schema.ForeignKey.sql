select "schema".add_foreign_key('packages', 'accounting', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('packages', 'level', 'service_levels', 'name', '1.0a100', '1.0a122');
select "schema".add_foreign_key('packages', 'created_by', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('packages', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);
