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

create sequence         linux."GroupServer_id_seq" cycle;
grant all            on linux."GroupServer_id_seq" to aoadmin;
grant select, update on linux."GroupServer_id_seq" to aoserv_app;
grant select, update on linux."GroupServer_id_seq" to management; -- For "root" only

create table linux."GroupServer" (
  id integer
    default nextval('linux."GroupServer_id_seq"')
    primary key,
  "name" text
    not null,
  ao_server integer
    not null,
  gid linux."LinuxId"
    not null,
  created timestamp with time zone
    not null
    default now(),
  unique("name", ao_server),
  unique(ao_server, gid)
);
grant all                            on linux."GroupServer" to aoadmin;
grant select, insert, update, delete on linux."GroupServer" to aoserv_app;
grant select, insert, delete         on linux."GroupServer" to management; -- TODO: "INSERT" or "root" only - trigger/view to enforce?
