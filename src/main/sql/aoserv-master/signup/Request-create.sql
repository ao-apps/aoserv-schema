/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2007, 2008, 2009, 2012, 2018, 2020, 2021  AO Industries, Inc.
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

create sequence         signup."Request_id_seq" cycle;
grant all            on signup."Request_id_seq" to aoadmin;
grant select, update on signup."Request_id_seq" to aoserv_app;

create table signup."Request" (
  id integer
    default nextval('signup."Request_id_seq"')
    primary key,
  brand text not null,
  "time" timestamp with time zone not null default now(),
  ip_address "com.aoapps.net"."InetAddress" not null,
  package_definition integer not null,
  business_name text not null,
  business_phone text not null,
  business_fax text,
  business_address1 text not null,
  business_address2 text,
  business_city text not null,
  business_state text,
  business_country character(2) not null,
  business_zip text,
  ba_name text not null,
  ba_title text,
  ba_work_phone text not null,
  ba_cell_phone text,
  ba_home_phone text,
  ba_fax text,
  ba_email "com.aoapps.net"."Email" not null,
  ba_address1 text,
  ba_address2 text,
  ba_city text,
  ba_state text,
  ba_country character(2),
  ba_zip text,
  ba_username text not null,
  billing_contact text not null,
  billing_email "com.aoapps.net"."Email" not null,
  billing_use_monthly boolean not null,
  billing_pay_one_year boolean not null,
  -- The encrypted credit card details and password
  encrypted_data text not null,
  -- The public key that was used to encrypt the credit card details and password
  encryption_from integer not null,
  -- The recipient for the encrypted content
  encryption_recipient integer not null,
  completed_by text,
  completed_time timestamp with time zone
);
grant all                            on signup."Request" to aoadmin;
grant select, insert, update, delete on signup."Request" to aoserv_app;
