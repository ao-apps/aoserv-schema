/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2007, 2008, 2010, 2012, 2018, 2019, 2020  AO Industries, Inc.
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

create sequence         payment."CreditCard_id_seq" cycle;
grant all            on payment."CreditCard_id_seq" to aoadmin;
grant select, update on payment."CreditCard_id_seq" to aoserv_app;

create table payment."CreditCard" (
  id integer
    default nextval('payment."CreditCard_id_seq"')
    primary key,
  processor_id text not null,
  accounting text not null,
  group_name text,
  card_info text not null,
  "expirationMonth" smallint,
  "expirationYear" smallint,
  provider_unique_id text not null,
  first_name text not null,
  last_name text not null,
  company_name text,
  email "com.aoindustries.net"."Email",
  phone text,
  fax text,
  "customerId" text,
  customer_tax_id text,
  street_address1 text not null,
  street_address2 text,
  city text not null,
  "state" text,
  postal_code text,
  country_code character(2) not null,
  created timestamp with time zone not null default now(),
  created_by text not null,
  principal_name text,
  use_monthly boolean not null default false,
  active boolean not null default true,
  deactivated_on timestamp with time zone,
  deactivate_reason text,
  description text,
  encrypted_card_number text,
  encryption_card_number_from integer,
  encryption_card_number_recipient integer,
  check (
    (
        encrypted_card_number is null and encryption_card_number_from is null and encryption_card_number_recipient is null
    ) or (
        encrypted_card_number is not null and encryption_card_number_from is not null and encryption_card_number_recipient is not null
    )
  )
);

/* Conversion to 1.82.1:

Note: Carefully review and adapt "null as" on conversions:

create table payment."CreditCard_20190530" as select * from payment."CreditCard";

-- Recreate table, indexes, foreign keys

insert into payment."CreditCard" select
  id,
  processor_id,
  accounting,
  group_name,
  card_info,
  "expirationMonth",
  "expirationYear",
  provider_unique_id,
  first_name,
  last_name,
  company_name,
  email,
  phone,
  fax,
  null as "customerId",
  customer_tax_id,
  street_address1,
  street_address2,
  city,
  "state",
  postal_code,
  country_code,
  created,
  created_by,
  principal_name,
  use_monthly,
  active,
  deactivated_on,
  deactivate_reason,
  description,
  encrypted_card_number,
  encryption_card_number_from,
  encryption_card_number_recipient
from payment."CreditCard_20190530";
 */
grant all                            on payment."CreditCard" to aoadmin;
grant select, insert, update, delete on payment."CreditCard" to aoserv_app;
