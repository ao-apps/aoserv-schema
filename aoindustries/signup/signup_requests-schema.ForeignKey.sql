select "schema".add_foreign_key('signup', 'signup_requests', 'accounting',           'account', 'businesses',              'accounting', '1.23', '1.43');
select "schema".add_foreign_key('signup', 'signup_requests', 'brand',                'public',  'brands',                  'accounting', '1.44', null);
select "schema".add_foreign_key('signup', 'signup_requests', 'package_definition',   'billing', 'package_definitions',     'pkey',       '1.23', null);
select "schema".add_foreign_key('signup', 'signup_requests', 'business_country',     'public',  'country_codes',           'code',       '1.23', '1.68');
select "schema".add_foreign_key('signup', 'signup_requests', 'business_country',     'public',  'country_codes',           'code',       '1.69', null);
select "schema".add_foreign_key('signup', 'signup_requests', 'ba_country',           'public',  'country_codes',           'code',       '1.23', '1.68');
select "schema".add_foreign_key('signup', 'signup_requests', 'ba_country',           'public',  'country_codes',           'code',       '1.69', null);
select "schema".add_foreign_key('signup', 'signup_requests', 'encryption_from',      'account', 'encryption_keys',         'pkey',       '1.31', null);
select "schema".add_foreign_key('signup', 'signup_requests', 'encryption_key',       'account', 'encryption_keys',         'pkey',       '1.23', '1.30');
select "schema".add_foreign_key('signup', 'signup_requests', 'encryption_recipient', 'account', 'encryption_keys',         'pkey',       '1.31', null);
select "schema".add_foreign_key('signup', 'signup_requests', 'completed_by',         'account', 'business_administrators', 'username',   '1.23', null);
