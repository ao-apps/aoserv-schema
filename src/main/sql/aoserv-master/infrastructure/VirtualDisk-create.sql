/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2008, 2009, 2014, 2018, 2020  AO Industries, Inc.
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

create sequence         infrastructure."VirtualDisk_id_seq" cycle;
grant all            on infrastructure."VirtualDisk_id_seq" to aoadmin;
grant select, update on infrastructure."VirtualDisk_id_seq" to infrastructure;

create table infrastructure."VirtualDisk" (
  id integer
    default nextval('infrastructure."VirtualDisk_id_seq"')
    primary key,
  virtual_server integer
    not null,
  device text
    not null
    check (device = lower(device)),
  minimum_disk_speed integer
    check (minimum_disk_speed is null or minimum_disk_speed > 0),
  minimum_disk_speed_target integer
    check (minimum_disk_speed_target is null or minimum_disk_speed_target > 0),
  extents integer
    not null
    check (extents > 0),
  weight infrastructure."Weight"
    not null,
  weight_target infrastructure."Weight"
    not null,
  verify_day_of_week "java.util"."Calendar.DAY_OF_WEEK"
    not null
    default 7, -- Calendar.SATURDAY
  verify_hour_of_day "java.util"."Calendar.HOUR_OF_DAY"
    not null
    default 1, -- 1:00 AM
  unique(virtual_server, device)
);
grant all                    on infrastructure."VirtualDisk" to aoadmin;
grant select                 on infrastructure."VirtualDisk" to aoserv_app;
grant select, insert, update on infrastructure."VirtualDisk" to infrastructure;
