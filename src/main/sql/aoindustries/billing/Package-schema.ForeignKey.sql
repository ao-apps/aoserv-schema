select "schema".add_foreign_key('billing', 'packages', 'accounting',  'account', 'businesses',              'accounting', '1.0a100', null);
select "schema".add_foreign_key('billing', 'packages', 'level',       'billing', 'service_levels',          'name',       '1.0a100', '1.0a122');
select "schema".add_foreign_key('billing', 'packages', 'created_by',  'account', 'business_administrators', 'username',   '1.0a100', null);
select "schema".add_foreign_key('billing', 'packages', 'disable_log', 'account', 'disable_log',             'pkey',       '1.0a100', null);
