select "schema".add_column('billing', 'package_definition_limits', 'pkey', 0, 'pkey', false, true, false, 'the unique identifier for this limit', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'package_definition', 1, 'fkey', false, false, false, 'the pkey of the package definition', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'resource', 2, 'string', false, false, false, 'the resource name', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'soft_limit', 3, 'int', true, false, false, 'the number that may be used for additional charges are added, NULL means unlimited', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'hard_limit', 4, 'int', true, false, false, 'the maximum number that may be allocated, NULL means unlimited', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'additional_rate', 5, 'decimal_2', true, false, false, 'the monthly rate for those past the soft_limit', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'additional_transaction_type', 6, 'string', true, false, false, '', '1.0a123', null);
