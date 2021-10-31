/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2007, 2008, 2010, 2012, 2017, 2018, 2020, 2021  AO Industries, Inc.
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

create sequence         backup."FileReplication_id_seq" cycle;
grant all            on backup."FileReplication_id_seq" to aoadmin;
grant select         on backup."FileReplication_id_seq" to aoserv_app;
grant select, update on backup."FileReplication_id_seq" to management;

create table backup."FileReplication" (
  id integer
    default nextval('backup."FileReplication_id_seq"')
    primary key,
  server integer not null,
  backup_partition integer not null,
  max_bit_rate bigint,
  use_compression boolean not null,
  retention smallint not null,
  connect_address text,
  connect_from "com.aoapps.net"."InetAddress",
  enabled boolean not null default true,
  quota_gid linux."LinuxId",
  unique(server, backup_partition),
  unique(backup_partition, quota_gid),
  -- Failover mirrors (retention=1) may not be on a quota-enabled partition
  check(not(retention=1 and quota_gid is not null))
);
grant all            on backup."FileReplication" to aoadmin;
grant select, update on backup."FileReplication" to aoserv_app;
grant select, insert on backup."FileReplication" to management;
