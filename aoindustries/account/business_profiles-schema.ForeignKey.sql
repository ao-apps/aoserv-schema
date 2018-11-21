select "schema".add_foreign_key('account', 'business_profiles', 'accounting', 'account', 'businesses',    'accounting', '1.0a100', null);
select "schema".add_foreign_key('account', 'business_profiles', 'country',    'payment', 'country_codes', 'code',       '1.0a100', '1.68');
select "schema".add_foreign_key('account', 'business_profiles', 'country',    'payment', 'country_codes', 'code',       '1.69',    null);
