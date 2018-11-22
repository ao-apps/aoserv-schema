select "schema".add_foreign_key('account', 'disable_log', 'disabled_by', 'account', 'business_administrators', 'username',   '1.0a100', null);
select "schema".add_foreign_key('account', 'disable_log', 'accounting',  'account', 'businesses',              'accounting', '1.0a100', null);
