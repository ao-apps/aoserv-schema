/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020, 2021  AO Industries, Inc.
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
  '1.84.13'
);
select aosh.add_command(
  'add_dns_record',
  'dns',
  'dns_records',
  'adds a record to a name server zone',
  '<i>zone</i> {<b>@</b>|<i>hostname</i>} {<b>A</b>|<b>AAAA</b>|<b>CNAME</b>|<b>NS</b>|<b>PTR</b>|<b>TXT</b>} {<i>hostname</i>|<i>ip_address</i>|<i>destination</i>|<i>value</i>} [{""|<i>ttl</i>}]
<i>zone</i> {<b>@</b>|<i>hostname</i>} <b>CAA</b> <i>flag</i> {<b>issue</b>|<b>issuewild</b>|<b>iodef</b>|<b>contactemail</b>|<b>contactphone</b>} <i>value</i> [{""|<i>ttl</i>}]
<i>zone</i> {<b>@</b>|<i>hostname</i>} <b>MX</b> <i>priority</i> {<i>hostname</i>|<i>destination</i>} [{""|<i>ttl</i>}]
<i>zone</i> {<b>@</b>|<i>hostname</i>} <b>SRV</b> <i>priority</i> <i>weight</i> <i>port</i> <i>target</i> [{""|<i>ttl</i>}]
<i>zone</i> {<b>@</b>|<i>hostname</i>} <i>type</i> {""|<i>priority</i>} {""|<i>weight</i>} {""|<i>port</i>} {""|<i>flag</i>} {""|<i>tag</i>} <i>value</i> [{""|<i>ttl</i>}]',
  '1.86.0',
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
  '1.84.13'
);
select aosh.add_command(
  'remove_dns_record',
  'dns',
  'dns_records',
  'removes a record from a name server zone',
  '<i>pkey</i>
<i>zone</i> {<b>@</b>|<i>hostname</i>} <i>type</i> {""|<i>tag</i>} <i>value</i>',
  '1.86.0',
  null
);
