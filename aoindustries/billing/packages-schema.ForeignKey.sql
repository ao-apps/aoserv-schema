select "schema".add_foreign_key('billing', 'packages', 'accounting',  'public', 'businesses',              'accounting', '1.0a100', null);
select "schema".add_foreign_key('billing', 'packages', 'level',                 'service_levels',          'name',       '1.0a100', '1.0a122');
select "schema".add_foreign_key('billing', 'packages', 'created_by',  'public', 'business_administrators', 'username',   '1.0a100', null);
select "schema".add_foreign_key('billing', 'packages', 'disable_log', 'public', 'disable_log',             'pkey',       '1.0a100', null);
