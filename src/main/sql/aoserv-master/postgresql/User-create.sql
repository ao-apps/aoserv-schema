/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2010, 2013, 2018, 2019, 2020, 2021  AO Industries, Inc.
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

create table postgresql."User" (
  username text
    primary key
  check (
    username NOT IN (
      -- Default roles, PostgreSQL 10+ - https://www.postgresql.org/docs/10/default-roles.html
      'pg_monitor',
      'pg_read_all_settings',
      'pg_read_all_stats',
      'pg_signal_backend',
      'pg_stat_scan_tables',
      -- Default roles, PostgreSQL 11+ - https://www.postgresql.org/docs/11/default-roles.html
      'pg_execute_server_program',
      'pg_read_server_files',
      'pg_write_server_files',
      -- Predefined roles, PostgreSQL 14+ - https://www.postgresql.org/docs/14/predefined-roles.html
      'pg_read_all_data',
      'pg_write_all_data',
      'pg_database_owner'
    )
  ),
  createdb boolean
    not null
    default false,
  trace boolean
    not null
    default false,
  super boolean
    not null
    default false,
  catupd boolean
    not null
    default false,
  disable_log integer
);
grant all                            on postgresql."User" to aoadmin;
grant select, insert, update, delete on postgresql."User" to aoserv_app;
