/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2009, 2010, 2012, 2018, 2020  AO Industries, Inc.
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

create sequence         account."AccountHost_id_seq" cycle;
grant all            on account."AccountHost_id_seq" to aoadmin;
grant select, update on account."AccountHost_id_seq" to aoserv_app;
grant select, update on account."AccountHost_id_seq" to infrastructure;

create table account."AccountHost" (
  id integer
    default nextval('account."AccountHost_id_seq"')
    primary key,
  accounting text not null,
  server integer not null,
  is_default boolean not null,
  can_control_apache boolean not null default false,
  can_control_cron boolean not null default false,
  can_control_mysql boolean not null default false,
  can_control_postgresql boolean not null default false,
  can_control_xfs boolean not null default false,
  can_control_xvfb boolean not null default false,
  can_vnc_console boolean not null default false,
  can_control_virtual_server boolean not null default false,
  unique(accounting, server)
);
grant all                            on account."AccountHost" to aoadmin;
grant select, update, insert, delete on account."AccountHost" to aoserv_app;
grant select, insert                 on account."AccountHost" to infrastructure;
grant select, update                 on account."AccountHost" to management;
