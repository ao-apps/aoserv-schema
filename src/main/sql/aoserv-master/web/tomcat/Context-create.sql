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

create sequence         "web.tomcat"."Context_id_seq" cycle;
grant all            on "web.tomcat"."Context_id_seq" to aoadmin;
grant select, update on "web.tomcat"."Context_id_seq" to aoserv_app;

create table "web.tomcat"."Context" (
  id integer
    default nextval('"web.tomcat"."Context_id_seq"')
    primary key,
  tomcat_site integer
    not null,
  class_name text,
  -- TODO: Make these nullable and let Tomcat use defaults for cleaner configs
  cookies boolean
    not null,
  cross_context boolean
    not null,
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  doc_base "com.aoapps.net"."Path"
    not null,
  override boolean
    not null,
  "path" text
    not null,
  privileged boolean
    not null,
  reloadable boolean
    not null,
  use_naming boolean
    not null,
  wrapper_class text,
  debug integer
    not null,
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  work_dir "com.aoapps.net"."Path",
  server_xml_configured boolean
    not null,
  unique(tomcat_site, "path")
);
grant all                            on "web.tomcat"."Context" to aoadmin;
grant select, insert, update, delete on "web.tomcat"."Context" to aoserv_app;
