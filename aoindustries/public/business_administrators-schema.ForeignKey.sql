select "schema".add_foreign_key('business_administrators', 'username', 'usernames', 'username', '1.0a100', null);
select "schema".add_foreign_key('business_administrators', 'country', 'country_codes', 'code', '1.0a100', '1.68');
select "schema".add_foreign_key('business_administrators', 'country', 'country_codes', 'code', '1.69', null);
select "schema".add_foreign_key('business_administrators', 'disable_log', 'disable_log', 'pkey', '1.0a100', null);
