select "schema".add_foreign_key('disable_log', 'disabled_by', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('disable_log', 'accounting', 'businesses', 'accounting', '1.0a100', null);
