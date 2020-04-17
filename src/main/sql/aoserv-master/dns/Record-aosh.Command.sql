/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoserv-schema.
 *
 * aoserv-schema is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aoserv-schema is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

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
