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

create sequence         "distribution.management"."DistroFile_id_seq" cycle;
grant all            on "distribution.management"."DistroFile_id_seq" to aoadmin;
grant select, update on "distribution.management"."DistroFile_id_seq" to aoserv_app;

create table "distribution.management"."DistroFile" (
  id integer
    default nextval('"distribution.management"."DistroFile_id_seq"')
    primary key,
  operating_system_version integer
    not null,
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  "path" "com.aoapps.net"."Path"
    not null,
  optional boolean
    not null,
  -- TODO: Convert to enum both PostgreSQL and Java
  "type" text
    not null,
  mode bigint
    not null,
  linux_account text
    not null,
  linux_group text
    not null,
  "size" bigint,
  file_sha256_0 bigint,
  file_sha256_1 bigint,
  file_sha256_2 bigint,
  file_sha256_3 bigint,
  symlink_target text,
  unique("path", operating_system_version)
);
grant all    on "distribution.management"."DistroFile" to aoadmin;
grant select on "distribution.management"."DistroFile" to aoserv_app;
