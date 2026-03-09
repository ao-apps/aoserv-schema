/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020, 2026  AO Industries, Inc.
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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

create index "Bind_package_fkey" on net."Bind" (
  package
);
create index "Bind_ipAddress_fkey" on net."Bind" (
  "ipAddress"
);
create index "Bind_app_protocol_fkey" on net."Bind" (
  app_protocol
);
-- Enforce per-host unique ports for specific AppProtocol.isUniquePerHost
create unique index "Bind_isUniquePerHost_uni" on net."Bind" (
  server,
  app_protocol
) where app_protocol in (
  /*
   * This list is generated with the following query.  Whenever re-creating this index, first update this list.
   * Should PostgreSQL ever support sub-query, it would be:
   * select protocol from net."AppProtocol" where "isUniquePerHost"
   * Generate the list, but you'll have to remove the comma from the last line:
\pset border off
select '  ''' || protocol || ''',' from net."AppProtocol" where "isUniquePerHost" order by protocol;
\pset border on
   */
  'NTP',
  'Xvfb',
  'auth',
  'bootpc',
  'bootps',
  'ldap',
  'milter',
  'netbios-dgm',
  'netbios-ns',
  'netbios-ssn',
  'nfs',
  'ntalk',
  'opendkim',
  'ozone',
  'ozone-admin',
  'redis',
  'redis-cluster',
  'redis-sentinel',
  'rndc',
  'rquotad',
  'shell',
  'sieve',
  'spamd',
  'sunrpc',
  'talk'
);
