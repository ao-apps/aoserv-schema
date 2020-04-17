/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2010, 2012, 2017, 2018, 2020  AO Industries, Inc.
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

create table linux."User" (
  username text
    primary key,
  "name" text,
  office_location text,
  office_phone text,
  home_phone text,
  "type" text
    not null,
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  shell "com.aoindustries.net"."Path"
    not null,
  created timestamp with time zone
    not null
    default now(),
  disable_log integer
);
grant all                            on linux."User" to aoadmin;
grant select, insert, update, delete on linux."User" to aoserv_app;
