/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020, 2021  AO Industries, Inc.
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

create sequence         email."SmtpRelay_id_seq" cycle;
grant all            on email."SmtpRelay_id_seq" to aoadmin;
grant select, update on email."SmtpRelay_id_seq" to aoserv_app;

create table email."SmtpRelay" (
  id integer
    default nextval('email."SmtpRelay_id_seq"')
    primary key,
  package text
    not null,
  ao_server integer,
  "host" "com.aoapps.net"."HostAddress"
    not null,
  "type" text
    not null,
  created timestamp with time zone
    not null,
  last_refreshed timestamp with time zone
    not null,
  refresh_count integer
    not null,
  expiration timestamp with time zone,
  disable_log integer,
  unique(package, ao_server, "host")
);
grant all                            on email."SmtpRelay" to aoadmin;
grant select, insert, update, delete on email."SmtpRelay" to aoserv_app;
