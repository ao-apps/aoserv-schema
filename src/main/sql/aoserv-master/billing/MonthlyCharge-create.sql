/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2009, 2012, 2018, 2019, 2020  AO Industries, Inc.
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

create sequence         billing."MonthlyCharge_id_seq" cycle;
grant all            on billing."MonthlyCharge_id_seq" to aoadmin;
grant select, update on billing."MonthlyCharge_id_seq" to billing;

create table billing."MonthlyCharge" (
  id integer
    default nextval('billing."MonthlyCharge_id_seq"')
    primary key,
  accounting text not null,
  package text not null,
  "type" text not null,
  description text,
  quantity numeric(8,3) not null
    default 1
    constraint quantity_chk
      check (quantity>0),
  "rate.currency" char(3) not null,
  "rate.value" numeric not null,
  created timestamp with time zone not null
    default now(),
  created_by text not null,
  active boolean not null
    default 'true'
);

grant all                    on billing."MonthlyCharge" to aoadmin;
grant select                 on billing."MonthlyCharge" to aoserv_app;
grant select, insert, update on billing."MonthlyCharge" to billing;
