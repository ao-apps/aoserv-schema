select "schema".add_foreign_key('package_definitions', 'accounting', 'businesses', 'accounting', '1.0a123', '1.43');
select "schema".add_foreign_key('package_definitions', 'brand', 'brands', 'accounting', '1.44', '1.44');
select "schema".add_foreign_key('package_definitions', 'accounting', 'businesses', 'accounting', '1.45', null);
select "schema".add_foreign_key('package_definitions', 'category', 'package_categories', 'name', '1.0a123', null);
select "schema".add_foreign_key('package_definitions', 'setup_fee_transaction_type', 'transaction_types', 'name', '1.0a123', null);
select "schema".add_foreign_key('package_definitions', 'monthly_rate_transaction_type', 'transaction_types', 'name', '1.0a123', null);
