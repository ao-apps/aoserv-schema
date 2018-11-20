select aosh.add_command(
  'desc',
  'schema',
  'schema_tables',
  'describes the structure of a table',
  '<i>table_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'describe',
  'schema',
  'schema_tables',
  'describes the structure of a table',
  '<i>table_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'select',
  'schema',
  'schema_tables',
  'selects rows and columns from a table',
  '{<b>*</b>|<i>column[::type][.join][, column[::type][.join]]</i>|<b>count(*)</b>} <b>from</b> <i>table_name</i> [order by <i>column[::type][.join][, column[::type][.join]]]</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'show',
  'schema',
  'schema_tables',
  'shows information about tables',
  '<b>tables</b>',
  '1.0a100',
  null
);
