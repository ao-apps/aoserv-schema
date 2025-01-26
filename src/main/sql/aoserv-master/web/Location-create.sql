/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020, 2021, 2025  AO Industries, Inc.
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

create sequence         web."Location_id_seq" cycle;
grant all            on web."Location_id_seq" to aoadmin;
grant select, update on web."Location_id_seq" to aoserv_app;

create table web."Location" (
  id integer
    default nextval('web."Location_id_seq"')
    primary key,
  -- TODO: Allow a Location to be attached to either a site or a virtualHost
  httpd_site integer
    not null,
  "path" text
    not null,
  is_regular_expression boolean
    not null,
  -- TODO: Make auth and require parts optional because a location with just "handler" is still useful
  --       This could also be done as a separate table, which might reference location, site, ...
  auth_name text
    not null,
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  auth_group_file "com.aoapps.net"."Path"
    not null,
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  auth_user_file "com.aoapps.net"."Path"
    not null,
  require text
    not null,
  -- TODO: Make an enum both in PostgreSQL and Java?  What to do with values unknown to client?  Make a lookup table instead?
  "handler" text
    check ("handler" is null or "handler" in ('server-status')),
  unique(httpd_site, "path")
);
grant all                            on web."Location" to aoadmin;
grant select, insert, update, delete on web."Location" to aoserv_app;
grant select, update                 on web."Location" to management;
