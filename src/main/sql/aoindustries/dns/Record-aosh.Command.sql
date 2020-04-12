select aosh.add_command(
  'add_dns_record',
  'dns',
  'dns_records',
  'adds a record to a name server zone',
  '<i>zone</i> {<b>@</b>|<i>hostname</i>} <i>type</i> {""|<i>mx_priority</i>} {<i>hostname</i>|<i>ip_address</i>}',
  '1.0a100',
  '1.0a126'
);
select aosh.add_command(
  'add_dns_record',
  'dns',
  'dns_records',
  'adds a record to a name server zone',
  '<i>zone</i> {<b>@</b>|<i>hostname</i>} <i>type</i> {""|<i>mx_priority</i>} {<i>hostname</i>|<i>ip_address</i>} {""|<i>ttl</i>}',
  '1.0a127',
  '1.71'
);
select aosh.add_command(
  'add_dns_record',
  'dns',
  'dns_records',
  'adds a record to a name server zone',
  '<i>zone</i> {<b>@</b>|<i>hostname</i>} <i>type</i> {""|<i>priority</i>} {""|<i>weight</i>} {""|<i>port</i>} {<i>hostname</i>|<i>ip_address</i>|<i>destination</i>} {""|<i>ttl</i>}',
  '1.72',
  null
);
select aosh.add_command(
  'remove_dns_record',
  'dns',
  'dns_records',
  'removes a record from a name server zone',
  '<i>pkey</i>',
  '1.0a100',
  '1.74'
);
select aosh.add_command(
  'remove_dns_record',
  'dns',
  'dns_records',
  'removes a record from a name server zone',
  '{<i>pkey</i>|<i>zone</i> {<b>@</b>|<i>hostname</i>} <i>type</i> {<i>hostname</i>|<i>ip_address</i>|<i>destination</i>}}',
  '1.75',
  null
);
