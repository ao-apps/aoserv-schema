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

create sequence         backup."FileReplicationSchedule_id_seq" cycle;
grant all            on backup."FileReplicationSchedule_id_seq" to aoadmin;
grant select, update on backup."FileReplicationSchedule_id_seq" to aoserv_app;
grant select, update on backup."FileReplicationSchedule_id_seq" to management;

create table backup."FileReplicationSchedule" (
  id integer
    default nextval('backup."FileReplicationSchedule_id_seq"')
    primary key,
  replication integer
    not null,
  "hour" smallint
    not null
    constraint hour_chk
      check ("hour" >= 0 and "hour" <= 23),
  "minute" smallint
    not null
    constraint minute_chk
      check ("minute" >= 0 and "minute" <= 59),
  enabled boolean
    not null
    default true,
  unique(replication, "hour", "minute")
);
grant all                    on backup."FileReplicationSchedule" to aoadmin;
grant select, insert, delete on backup."FileReplicationSchedule" to aoserv_app;
grant insert                 on backup."FileReplicationSchedule" to management;
