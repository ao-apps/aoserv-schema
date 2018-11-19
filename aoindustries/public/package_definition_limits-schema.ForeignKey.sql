select "schema".add_foreign_key('package_definition_limits', 'package_definition', 'package_definitions', 'pkey', '1.0a123', null);
select "schema".add_foreign_key('package_definition_limits', 'resource', 'resources', 'name', '1.0a123', null);
select "schema".add_foreign_key('package_definition_limits', 'additional_transaction_type', 'transaction_types', 'name', '1.0a123', null);
