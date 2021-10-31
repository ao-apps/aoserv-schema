/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020  AO Industries, Inc.
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

create sequence         postgresql."Database_id_seq" cycle;
grant all            on postgresql."Database_id_seq" to aoadmin;
grant select, update on postgresql."Database_id_seq" to aoserv_app;
grant select, update on postgresql."Database_id_seq" to management;

create table postgresql."Database" (
  id integer
    default nextval('postgresql."Database_id_seq"')
    primary key,
  "name" text
    not null,
  postgres_server integer
    not null,
  datdba integer
    not null,
  encoding integer
    not null,
  is_template boolean
    not null,
  allow_conn boolean
    not null,
  enable_postgis boolean
    not null,
  unique ("name", postgres_server)
);
grant all                            on postgresql."Database" to aoadmin;
grant select, insert, update, delete on postgresql."Database" to aoserv_app;
grant select, insert, delete         on postgresql."Database" to management;
