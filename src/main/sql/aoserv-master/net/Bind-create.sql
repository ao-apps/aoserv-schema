/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2009, 2010, 2013, 2017, 2018, 2020  AO Industries, Inc.
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

create sequence         net."Bind_id_seq" cycle;
grant all            on net."Bind_id_seq" to aoadmin;
grant select, update on net."Bind_id_seq" to aoserv_app;
grant select, update on net."Bind_id_seq" to management;

create table net."Bind" (
  id integer
    default nextval('net."Bind_id_seq"')
    primary key,
  package text
    not null,
  server integer
    not null,
  "ipAddress" integer
    not null,
  port "com.aoindustries.net"."Port"
    not null,
  net_protocol "com.aoindustries.net"."Protocol"
    not null,
    -- TODO: Should be TCP, UDP, SCTP only, matching Port class?
  app_protocol text
    not null,
  monitoring_enabled boolean
    not null
    default true,
  monitoring_parameters text,
  unique(server, "ipAddress", port, net_protocol)
);
grant all                            on net."Bind" to aoadmin;
grant select, insert, update, delete on net."Bind" to aoserv_app;
grant select, insert, delete         on net."Bind" to management;
