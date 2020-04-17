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

create sequence         "web.tomcat"."ContextDataSource_id_seq" cycle;
grant all            on "web.tomcat"."ContextDataSource_id_seq" to aoadmin;
grant select, update on "web.tomcat"."ContextDataSource_id_seq" to aoserv_app;

create table "web.tomcat"."ContextDataSource" (
  id integer
    default nextval('"web.tomcat"."ContextDataSource_id_seq"')
    primary key,
  tomcat_context integer
    not null,
  "name" text
    not null,
  driver_class_name text
    not null,
  url text
    not null,
  username text
    not null,
  password text
    not null,
  max_active integer
    not null,
  max_idle integer
    not null,
  max_wait integer
    not null,
  validation_query text,
  unique(tomcat_context, "name")
);
grant all                            on "web.tomcat"."ContextDataSource" to aoadmin;
grant select, insert, update, delete on "web.tomcat"."ContextDataSource" to aoserv_app;
