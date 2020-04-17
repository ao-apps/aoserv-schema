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

create sequence         billing."Package_id_seq" cycle;
grant all            on billing."Package_id_seq" to aoadmin;
grant select, update on billing."Package_id_seq" to aoserv_app;
grant select, update on billing."Package_id_seq" to billing;

create table billing."Package" (
  id integer
    default nextval('billing."Package_id_seq"')
    primary key,
  "name" text
    not null
    unique,
  accounting text
    not null,
  package_definition integer
    not null,
  created timestamp with time zone
    not null
    default now(),
  created_by text
    not null,
  disable_log integer,
  email_in_burst integer,
  email_in_rate real,
  email_out_burst integer,
  email_out_rate real,
  email_relay_burst integer,
  email_relay_rate real
);
grant all                    on billing."Package" to aoadmin;
grant select, insert, update on billing."Package" to aoserv_app;
grant select, insert, update on billing."Package" to billing;
grant select                 on billing."Package" to infrastructure;
grant select                 on billing."Package" to management;
