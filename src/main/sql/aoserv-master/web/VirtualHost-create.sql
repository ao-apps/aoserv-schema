/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2017, 2018, 2020, 2021  AO Industries, Inc.
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

create sequence         web."VirtualHost_id_seq" cycle;
grant all            on web."VirtualHost_id_seq" to aoadmin;
grant select, update on web."VirtualHost_id_seq" to aoserv_app;
grant select, update on web."VirtualHost_id_seq" to management;

create table web."VirtualHost" (
  id integer
    default nextval('web."VirtualHost_id_seq"')
    primary key,
  httpd_site integer
    not null,
  httpd_bind integer
    not null,
  "name" text
    check ("name" is null or length("name") > 0),
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  access_log "com.aoapps.net"."Path"
    not null,
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  error_log "com.aoapps.net"."Path"
    not null,
  certificate integer,
  disable_log integer,
  predisable_config text,
  is_manual boolean
    not null
    default false,
  redirect_to_primary_hostname boolean
    not null
    default true,
  include_site_config text
    check (
      include_site_config is null
      or include_site_config='true'
      or include_site_config='false'
      or include_site_config like 'IfModule %'
    )
);
grant all                            on web."VirtualHost" to aoadmin;
grant select, insert, update, delete on web."VirtualHost" to aoserv_app;
grant select, insert, update         on web."VirtualHost" to management;
