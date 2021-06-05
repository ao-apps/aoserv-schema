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

create sequence         web."VirtualHostName_id_seq" cycle;
grant all            on web."VirtualHostName_id_seq" to aoadmin;
grant select, update on web."VirtualHostName_id_seq" to aoserv_app;
grant select, update on web."VirtualHostName_id_seq" to management;

create table web."VirtualHostName" (
  id integer
    default nextval('web."VirtualHostName_id_seq"')
    primary key,
  httpd_site_bind integer
    not null,
  hostname "com.aoapps.net"."DomainName"
    not null,
  is_primary boolean
    not null,
  unique(hostname, httpd_site_bind)
);
grant all                            on web."VirtualHostName" to aoadmin;
grant select, insert, update, delete on web."VirtualHostName" to aoserv_app;
grant select, insert                 on web."VirtualHostName" to management;
