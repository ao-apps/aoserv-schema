/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2009, 2013, 2017, 2018, 2020  AO Industries, Inc.
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

create sequence         mysql."UserServer_id_seq" cycle;
grant all            on mysql."UserServer_id_seq" to aoadmin;
grant select, update on mysql."UserServer_id_seq" to aoserv_app;
grant select, update on mysql."UserServer_id_seq" to management;

create table mysql."UserServer" (
  id integer
    default nextval('mysql."UserServer_id_seq"')
    primary key,
  username text
    not null,
  mysql_server integer
    not null,
  "host" text,
  disable_log integer,
  predisable_password text,
  max_questions integer
    not null
        constraint max_questions_chk
      check (max_questions>=0)
    default 0,
  max_updates integer
    not null
    constraint max_updates_chk
      check (max_updates>=0)
    default 0,
  max_connections integer
    not null
    constraint max_connections_chk
      check (max_connections>=0)
    default 0,
  max_user_connections integer
    not null
    constraint max_user_connections_chk
      check (max_user_connections>=0)
    default 0,
  unique (mysql_server, username)
);
grant all                            on mysql."UserServer" to aoadmin;
grant select, insert, update, delete on mysql."UserServer" to aoserv_app;
grant select, insert, delete         on mysql."UserServer" to management;
