/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2009, 2013, 2018, 2020  AO Industries, Inc.
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

create table mysql."User" (
  username text
    primary key,
  select_priv boolean
    not null
    default false,
  insert_priv boolean
    not null
    default false,
  update_priv boolean
    not null
    default false,
  delete_priv boolean
    not null
    default false,
  create_priv boolean
    not null
    default false,
  drop_priv boolean
    not null
    default false,
  reload_priv boolean
    not null
    default false,
  shutdown_priv boolean
    not null
    default false,
  process_priv boolean
    not null
    default false,
  file_priv boolean
    not null
    default false,
  grant_priv boolean
    not null
    default false,
  references_priv boolean
    not null
    default false,
  index_priv boolean
    not null
    default false,
  alter_priv boolean
    not null
    default false,
  show_db_priv boolean
    not null
    default false,
  super_priv boolean
    not null
    default false,
  create_tmp_table_priv boolean
    not null
    default false,
  lock_tables_priv boolean
    not null
    default false,
  execute_priv boolean
    not null
    default false,
  repl_slave_priv boolean
    not null
    default false,
  repl_client_priv boolean
    not null
    default false,
  create_view_priv boolean
    not null
    default false,
  show_view_priv boolean
    not null
    default false,
  create_routine_priv boolean
    not null
    default false,
  alter_routine_priv boolean
    not null
    default false,
  create_user_priv boolean
    not null
    default false,
  event_priv boolean
    not null
    default false,
  trigger_priv boolean
    not null
    default false,
  disable_log integer
);
grant all                            on mysql."User" to aoadmin;
grant select, insert, update, delete on mysql."User" to aoserv_app;
