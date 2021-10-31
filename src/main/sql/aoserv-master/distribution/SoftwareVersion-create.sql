/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2012, 2014, 2016, 2018, 2020  AO Industries, Inc.
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

create sequence distribution."SoftwareVersion_id_seq" cycle;
grant all    on distribution."SoftwareVersion_id_seq" to aoadmin;
grant select on distribution."SoftwareVersion_id_seq" to aoserv_app;

create table distribution."SoftwareVersion" (
  id integer
    default nextval('distribution."SoftwareVersion_id_seq"')
    primary key,
  "name" text
    not null,
  version text
    not null
    check (version!='' and version=trim(version)),
  updated timestamp with time zone
    default now()
    not null,
  -- TODO: owner should be attached inside distribution.management, not filtered in this otherwise public table
  owner text
    default 'orion'
    not null,
  operating_system_version integer,
  disable_time timestamp with time zone,
  disable_reason text,
  check (
	-- Either both null or both non-null
    (disable_time = null) = (disable_reason = null)
  ),
  unique("name", version, operating_system_version)
);
grant all            on distribution."SoftwareVersion" to aoadmin;
grant select         on distribution."SoftwareVersion" to aoserv_app;
grant select, update on distribution."SoftwareVersion" to distribution;
grant select         on distribution."SoftwareVersion" to management;
