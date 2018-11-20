select "schema".add_foreign_key('billing', 'monthly_charges', 'accounting', 'account', 'businesses',              'accounting', '1.0a100', null);
select "schema".add_foreign_key('billing', 'monthly_charges', 'package',    'billing', 'packages',                'name',       '1.0a100', '1.80');
select "schema".add_foreign_key('billing', 'monthly_charges', 'package',    'billing', 'packages',                'name',       '1.80.0',  null);
select "schema".add_foreign_key('billing', 'monthly_charges', 'type',       'billing', 'rates',                   'name',       '1.0a100', '1.0a122');
select "schema".add_foreign_key('billing', 'monthly_charges', 'type',       'billing', 'transaction_types',       'name',       '1.0a123', null);
select "schema".add_foreign_key('billing', 'monthly_charges', 'created_by', 'account', 'business_administrators', 'username',   '1.0a100', null);
