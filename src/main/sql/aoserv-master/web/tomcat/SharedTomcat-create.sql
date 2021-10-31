/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2009, 2013, 2017, 2018, 2020  AO Industries, Inc.
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

create sequence         "web.tomcat"."SharedTomcat_id_seq" cycle;
grant all            on "web.tomcat"."SharedTomcat_id_seq" to aoadmin;
grant select, update on "web.tomcat"."SharedTomcat_id_seq" to aoserv_app;

create table "web.tomcat"."SharedTomcat" (
  id integer
    default nextval('"web.tomcat"."SharedTomcat_id_seq"')
    primary key,
  "name" text
    not null
    check (
      -- Note: This matches keepWwwgroupDirs in HttpdSharedTomcatManager.
      -- Note: This matches isValidSharedTomcatName in HttpdSharedTomcat.
      "name" not in (
		-- Other filesystem patterns
        'lost+found',
        'aquota.group',
        'aquota.user'
      )
    ),
  ao_server integer
    not null,
  version integer
    not null,
  linux_server_account integer
    not null,
  linux_server_group integer
    not null,
  disable_log integer,
  tomcat4_worker integer
    unique,
  tomcat4_shutdown_port integer
    unique,
  tomcat4_shutdown_key text,
  is_manual boolean
    not null
    default false,
  max_post_size integer
    check (max_post_size is null or max_post_size >= 0),
  unpack_wars boolean not null
    default true,
  auto_deploy boolean not null
    default true,
  "tomcatAuthentication" boolean not null
    default true,
  unique (ao_server, "name")
);
grant all                            on "web.tomcat"."SharedTomcat" to aoadmin;
grant select, insert, update, delete on "web.tomcat"."SharedTomcat" to aoserv_app;
