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

create sequence         net."IpAddress_id_seq" cycle;
grant all            on net."IpAddress_id_seq" to aoadmin;
grant select         on net."IpAddress_id_seq" to aoserv_app;
grant select, update on net."IpAddress_id_seq" to management; -- For 127.0.0.1 only

create table net."IpAddress" (
  id integer
    default nextval('net."IpAddress_id_seq"')
    primary key,
  "inetAddress" "com.aoindustries.net"."InetAddress"
    not null,
  device integer,
  "isAlias" boolean
    not null,
  hostname "com.aoindustries.net"."DomainName",
  package integer
    not null,
  created timestamp with time zone
    not null
    default now(),
  "isAvailable" boolean
    not null,
  "isOverflow" boolean
    not null
    default false,
  "isDhcp" boolean
    not null
    default false,
  "externalInetAddress" "com.aoindustries.net"."InetAddress",
  netmask text
    not null,
  unique("inetAddress", device),
  check (
    -- Only the unspecified IP addresses may have a null hostname
    ("inetAddress" = '0.0.0.0') = (hostname is null)
  )
);

grant all            on net."IpAddress" to aoadmin;
grant select, update on net."IpAddress" to aoserv_app;
grant select, update on net."IpAddress" to infrastructure;
grant select, insert on net."IpAddress" to management; -- INSERT for 127.0.0.1 only - TODO: Trigger/view to enforce this?
