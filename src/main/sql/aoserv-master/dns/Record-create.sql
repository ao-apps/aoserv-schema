/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2007, 2010, 2011, 2013, 2014, 2017, 2018, 2020  AO Industries, Inc.
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

create sequence         dns."Record_id_seq" cycle;
grant all            on dns."Record_id_seq" to aoadmin;
grant select, update on dns."Record_id_seq" to aoserv_app;

create table dns."Record" (
  id integer
    default nextval('dns."Record_id_seq"')
    primary key,
  "zone" text not null,
  "domain" text not null,
  "type" text not null,
  priority integer,
  weight integer,
  port "com.aoindustries.net"."Port",
  destination text not null,
  "dhcpAddress" integer,
  ttl integer,
  unique("zone", "domain", "type", destination)
);
grant all                            on dns."Record" to aoadmin;
grant select, insert, update, delete on dns."Record" to aoserv_app;
grant select                         on dns."Record" to management;
