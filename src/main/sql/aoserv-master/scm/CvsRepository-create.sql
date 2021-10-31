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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

create sequence         scm."CvsRepository_id_seq" cycle;
grant all            on scm."CvsRepository_id_seq" to aoadmin;
grant select, update on scm."CvsRepository_id_seq" to aoserv_app;

create table scm."CvsRepository" (
  id integer
    default nextval('scm."CvsRepository_id_seq"')
    primary key,
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  "path" "com.aoapps.net"."Path"
    not null,
  linux_server_account integer
    not null,
  linux_server_group integer
    not null,
  mode bigint
    not null,
  created timestamp with time zone
    not null
    default now(),
  disable_log integer
);
grant all                            on scm."CvsRepository" to aoadmin;
grant select, update, insert, delete on scm."CvsRepository" to aoserv_app;
