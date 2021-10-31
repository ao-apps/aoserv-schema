/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2009, 2010, 2012, 2013, 2018, 2020, 2021  AO Industries, Inc.
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

create table account."Administrator" (
  username text
    primary key,
  password "com.aoapps.security"."HashedPassword"
    default '*'
    not null,
  "name" text
    not null
    constraint name_chk
      check (length("name")>0),
  title text,
  birthday date,
  is_preferred boolean
    default false
    not null,
  private boolean
    default true
    not null,
  created timestamp with time zone
    default now()
    not null,
  work_phone text
    not null
    constraint work_phone_chk
      check (length(work_phone)>0),
  home_phone text,
  cell_phone text,
  fax text,
  email "com.aoapps.net"."Email"
    not null,
  address1 text,
  address2 text,
  city text,
  "state" text,
  country character(2),
  zip text,
  disable_log integer,
  can_switch_users boolean not null,
  support_code text -- If null, support requests may not be initiated via email
);
grant all                            on account."Administrator" to aoadmin;
grant select, insert, update, delete on account."Administrator" to aoserv_app;
grant select                         on account."Administrator" to accounting;
grant insert                         on account."Administrator" to management; -- INSERT for aoserv-daemon users only
