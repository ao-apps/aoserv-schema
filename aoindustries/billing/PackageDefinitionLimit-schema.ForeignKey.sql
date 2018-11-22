select "schema".add_foreign_key('billing', 'package_definition_limits', 'package_definition',          'billing', 'package_definitions', 'pkey', '1.0a123', null);
select "schema".add_foreign_key('billing', 'package_definition_limits', 'resource',                    'billing', 'resources',           'name', '1.0a123', null);
select "schema".add_foreign_key('billing', 'package_definition_limits', 'additional_transaction_type', 'billing', 'transaction_types',   'name', '1.0a123', null);
