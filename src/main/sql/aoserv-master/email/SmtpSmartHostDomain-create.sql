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
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

create sequence email."SmtpSmartHostDomain_id_seq" cycle;
grant all    on email."SmtpSmartHostDomain_id_seq" to aoadmin;
grant select on email."SmtpSmartHostDomain_id_seq" to aoserv_app;

create table email."SmtpSmartHostDomain" (
  id integer
    default nextval('email."SmtpSmartHostDomain_id_seq"')
    primary key,
  smart_host integer not null,
  "domain" "com.aoapps.net"."DomainName"
    not null
    check ("domain"::text = lower("domain"::text)),
  domain_out_burst integer,
  domain_out_rate real,
  check ((domain_out_burst is null)=(domain_out_rate is null))
);
grant all    on email."SmtpSmartHostDomain" to aoadmin;
grant select on email."SmtpSmartHostDomain" to aoserv_app;
