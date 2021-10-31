/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020  AO Industries, Inc.
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

create sequence         net."FirewallZone_id_seq" cycle;
grant all            on net."FirewallZone_id_seq" to aoadmin;
grant select, update on net."FirewallZone_id_seq" to management;

create table net."FirewallZone" (
  id integer
    default nextval('net."FirewallZone_id_seq"')
    primary key,
  -- TODO: Should we allow zones to span multiple servers?
  --       A zone exists, and servers are added to it, versus a zone being duplicated across servers?
  --       This might become more important once we're tracking the IP addresses in the zone within AOServ
  server integer
    not null,
  "name" text
    not null
    check (length("name") between 1 and 17),
  short text,
  description text,
  fail2ban boolean
    not null
    default "name" in ('dmz', 'external', 'public'),
  unique(server, "name")
);
grant all                    on net."FirewallZone" to aoadmin;
grant select                 on net."FirewallZone" to aoserv_app;
grant select, insert, delete on net."FirewallZone" to management;
