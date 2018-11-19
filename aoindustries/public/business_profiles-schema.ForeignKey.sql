select "schema".add_foreign_key('business_profiles', 'accounting', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('business_profiles', 'country', 'country_codes', 'code', '1.0a100', '1.68');
select "schema".add_foreign_key('business_profiles', 'country', 'country_codes', 'code', '1.69', null);
