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

create sequence         backup."FileReplicationSetting_id_seq" cycle;
grant all            on backup."FileReplicationSetting_id_seq" to aoadmin;
grant select, update on backup."FileReplicationSetting_id_seq" to aoserv_app;

create table backup."FileReplicationSetting" (
  id smallint
    default nextval('backup."FileReplicationSetting_id_seq"')
    primary key,
  replication integer
    not null,
  "path" text
    not null,
  backup_enabled boolean
    not null,
  required boolean
    not null,
  unique(replication, "path"),
  check (
    backup_enabled or not required
  )
);
grant all                            on backup."FileReplicationSetting" to aoadmin;
grant select, insert, update, delete on backup."FileReplicationSetting" to aoserv_app;
