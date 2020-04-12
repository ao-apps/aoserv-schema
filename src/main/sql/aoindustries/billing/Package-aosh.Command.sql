select aosh.add_command(
  'add_package',
  'billing',
  'packages',
  'adds a new package to a business',
  '<i>package</i> <i>business</i> <i>service_level</i> <i>monthly_rate</i> {""|<i>user_limit</i>} <i>additional_user_rate</i> {""|<i>pop_limit</i>} <i>additional_pop_rate</i>',
  '1.0a100',
  '1.0a122'
);
select aosh.add_command(
  'add_package',
  'billing',
  'packages',
  'adds a new package to a business',
  '<i>package</i> <i>business</i> <i>package_definition</i>',
  '1.0a123',
  null
);
select aosh.add_command(
  'check_package_name',
  'billing',
  'packages',
  'checks the format of a package name',
  '<i>package</i>',
  '1.0a100',
  '1.80'
);
select aosh.add_command(
  'disable_package',
  'billing',
  'packages',
  'disables a package and everything in it, except its business administrators',
  '<i>name</i> <i>reason</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'enable_package',
  'billing',
  'packages',
  'enables a package and everything in it',
  '<i>name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'generate_package_name',
  'billing',
  'packages',
  'generates a unique package name based on a template',
  '<i>template</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_package_name_available',
  'billing',
  'packages',
  'checks the availability of a package name',
  '<i>package</i>',
  '1.0a100',
  null
);
