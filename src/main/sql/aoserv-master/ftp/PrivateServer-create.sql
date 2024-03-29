/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2010, 2012, 2018, 2020, 2021  AO Industries, Inc.
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

create table ftp."PrivateServer" (
  net_bind integer
    primary key,
  root text
    not null,
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  logfile "com.aoapps.net"."Path"
    not null,
  hostname "com.aoapps.net"."DomainName"
    not null,
  email "com.aoapps.net"."Email"
    not null,
  created timestamp with time zone
    default now()
    not null,
  linux_server_account integer
    not null,
  allow_anonymous boolean
    not null
);
grant all            on ftp."PrivateServer" to aoadmin;
grant select, delete on ftp."PrivateServer" to aoserv_app;
