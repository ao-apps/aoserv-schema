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
  'add_dns_zone',
  'dns',
  'dns_zones',
  'adds a zone to the name servers',
  '<i>package</i> <i>zone</i> <i>ip_address</i>',
  '1.0a100',
  '1.0a126'
);
select aosh.add_command(
  'add_dns_zone',
  'dns',
  'dns_zones',
  'adds a zone to the name servers',
  '<i>package</i> <i>zone</i> <i>ip_address</i> <i>ttl</i>',
  '1.0a127',
  null
);
select aosh.add_command(
  'set_dns_zone_ttl',
  'dns',
  'dns_zones',
  'sets the default TTL value for a name server zone',
  '<i>zone</i> <i>ttl</i>',
  '1.0a127',
  null
);
select aosh.add_command(
  'check_dns_zone',
  'dns',
  'dns_zones',
  'checks the format of a zone name',
  '<i>zone</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'is_dns_zone_available',
  'dns',
  'dns_zones',
  'checks the availability of a DNS zone',
  '<i>zone</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'print_zone_file',
  'dns',
  'dns_zones',
  'generates a zone file',
  '<i>zone</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'remove_dns_zone',
  'dns',
  'dns_zones',
  'removes a zone from the name servers',
  '<i>zone</i>',
  '1.0a100',
  null
);
