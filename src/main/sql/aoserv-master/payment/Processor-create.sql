/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2007, 2008, 2010, 2013, 2018, 2020  AO Industries, Inc.
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

create table payment."Processor" (
  provider_id text
    primary key,
  accounting text
    not null,
  class_name text not null,
  param1 text,
  param2 text,
  param3 text,
  param4 text,
  enabled boolean not null,
  weight integer not null,
  description text,
  encryption_from integer,
  encryption_recipient integer,
  check (
    (encryption_from is null and encryption_recipient is null)
    or (encryption_from is not null and encryption_recipient is not null)
  )
);
grant all    on payment."Processor" to aoadmin;
grant select on payment."Processor" to aoserv_app;
grant select on payment."Processor" to accounting;
