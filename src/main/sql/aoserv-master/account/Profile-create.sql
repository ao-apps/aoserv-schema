/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2007, 2010, 2012, 2018, 2020  AO Industries, Inc.
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

create sequence         account."Profile_id_seq" cycle;
grant all            on account."Profile_id_seq" to aoadmin;
grant select, update on account."Profile_id_seq" to aoserv_app;

create table account."Profile" (
  id integer
    default nextval('account."Profile_id_seq"')
    primary key,
  accounting text
    not null,
  priority integer
    default 1
    not null,
  "name" text
    not null,
  private boolean
    default true
    not null,
  phone text
    not null,
  fax text,
  address1 text
    not null,
  address2 text,
  city text
    not null,
  "state" text,
  country character(2)
    default 'US'
    not null,
  zip text,
  send_invoice boolean
    default false
    not null,
  created timestamp with time zone
    default now()
    not null,
  billing_contact text
    not null,
  billing_email text
    not null,
  -- TODO: Remove this column once the implementation in account."Profile.bilingEmail{}" is verified
  "billingEmailFormat" account."Profile.EmailFormat"
    NOT NULL
    DEFAULT 'HTML',
  technical_contact text
    not null,
  -- TODO: Remove this column once the implementation in account."Profile.technicalEmail{}" is verified
  technical_email text
    not null,
  "technicalEmailFormat" account."Profile.EmailFormat"
    NOT NULL
    DEFAULT 'HTML',
  unique(accounting, priority)
);
grant all            on account."Profile" to aoadmin;
grant select, insert on account."Profile" to aoserv_app;
