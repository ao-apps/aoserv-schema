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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

create sequence         backup."BackupReport_id_seq" cycle;
grant all            on backup."BackupReport_id_seq" to aoadmin;
grant select, update on backup."BackupReport_id_seq" to aoserv_app;

-- TODO: This table seems unused, since we no longer use the old style backup system
create table backup."BackupReport" (
  id integer
    default nextval('backup."BackupReport_id_seq"')
    primary key,
  server integer
    not null,
  package integer
    not null,
  "date" date
    not null,
  file_count integer
    not null,
  disk_size bigint
    not null
);
grant all                    on backup."BackupReport" to aoadmin;
grant select, insert, delete on backup."BackupReport" to aoserv_app;
