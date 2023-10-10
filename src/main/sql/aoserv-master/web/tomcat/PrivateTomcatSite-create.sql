/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2017, 2018, 2020, 2023  AO Industries, Inc.
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

create table "web.tomcat"."PrivateTomcatSite" (
  tomcat_site integer
    primary key,
  tomcat4_shutdown_port integer
    unique,
  tomcat4_shutdown_key text,
  "maxParameterCount" integer
    check ("maxParameterCount" is null or "maxParameterCount" >= 0),
  max_post_size integer
    check (max_post_size is null or max_post_size >= 0),
  unpack_wars boolean not null
    default true,
  auto_deploy boolean not null
    default true,
  "undeployOldVersions" boolean not null
    default false,
  "tomcatAuthentication" boolean not null
    default true
);
grant all                            on "web.tomcat"."PrivateTomcatSite" to aoadmin;
grant select, insert, update, delete on "web.tomcat"."PrivateTomcatSite" to aoserv_app;
