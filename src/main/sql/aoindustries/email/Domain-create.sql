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

create sequence         email."Domain_id_seq" cycle;
grant all            on email."Domain_id_seq" to aoadmin;
grant select, update on email."Domain_id_seq" to aoserv_app;

create table email."Domain" (
  id integer
    default nextval('email."Domain_id_seq"')
    primary key,
  "domain" "com.aoindustries.net"."DomainName"
    not null,
    check ("domain"::text = lower("domain"::text)),
  ao_server integer
    not null,
  package text
    not null,
  unique(ao_server, "domain")
);
grant all                            on email."Domain" to aoadmin;
grant select, insert, update, delete on email."Domain" to aoserv_app;
