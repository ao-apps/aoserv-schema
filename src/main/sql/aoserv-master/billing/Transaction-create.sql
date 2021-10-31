/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2007, 2010, 2012, 2014, 2018, 2019, 2020  AO Industries, Inc.
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

create sequence         billing."Transaction_transid_seq" cycle;
grant all            on billing."Transaction_transid_seq" to aoadmin;
grant select, update on billing."Transaction_transid_seq" to aoserv_app;
grant select, update on billing."Transaction_transid_seq" to billing;

create table billing."Transaction" (
  "time" timestamp with time zone not null
    default now(),
  transid integer
    default nextval('billing."Transaction_transid_seq"')
    primary key,
  accounting text not null,
  source_accounting text not null,
  username text not null,
  "type" text not null,
  description text not null,
  quantity numeric(8,3) not null
    default 1
    constraint quantity_chk
      check (quantity>0),
  "rate.currency" char(3) not null,
  "rate.value" numeric not null,
  payment_type text,
  payment_info text,
  processor text,
  credit_card_transaction integer,
  -- TODO: Make an enum both in PostgreSQL and Java?
  payment_confirmed character(1) not null
    default 'W'
    constraint payment_confirmed_chk
      check (payment_confirmed='W' or payment_confirmed='Y' or payment_confirmed='N')
);

grant all                            on billing."Transaction" to aoadmin;
grant select, insert, update         on billing."Transaction" to aoserv_app;
grant select                         on billing."Transaction" to accounting;
grant select, insert, update, delete on billing."Transaction" to billing;
