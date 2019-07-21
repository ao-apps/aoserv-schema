select "schema".add_column('billing', 'package_definition_limits', 'pkey',                        'pkey',     false,  true, false, 'the unique identifier for this limit', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'package_definition',          'fkey',     false, false, false, 'the pkey of the package definition', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'resource',                    'string',   false, false, false, 'the resource name', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'soft_limit',                  'int',       true, false, false, 'the number that may be used for additional charges are added, NULL means unlimited', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'hard_limit',                  'int',       true, false, false, 'the maximum number that may be allocated, NULL means unlimited', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'additional_rate',             'decimal_2', true, false, false, 'the monthly rate for those past the soft_limit', '1.0a123', '1.82.1');
select "schema".add_column('billing', 'package_definition_limits', 'additionalRate',              'money',     true, false, false, 'the monthly rate for those past the soft_limit', '1.83.0', null);
select "schema".add_column('billing', 'package_definition_limits', 'additional_transaction_type', 'string',    true, false, false, '', '1.0a123', null);
