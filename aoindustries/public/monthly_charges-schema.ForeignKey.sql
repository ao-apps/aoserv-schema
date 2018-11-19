select "schema".add_foreign_key('monthly_charges', 'accounting', 'businesses', 'accounting', '1.0a100', null);
select "schema".add_foreign_key('monthly_charges', 'package', 'packages', 'name', '1.0a100', '1.80');
select "schema".add_foreign_key('monthly_charges', 'package', 'packages', 'name', '1.80.0', null);
select "schema".add_foreign_key('monthly_charges', 'type', 'rates', 'name', '1.0a100', '1.0a122');
select "schema".add_foreign_key('monthly_charges', 'type', 'transaction_types', 'name', '1.0a123', null);
select "schema".add_foreign_key('monthly_charges', 'created_by', 'business_administrators', 'username', '1.0a100', null);
