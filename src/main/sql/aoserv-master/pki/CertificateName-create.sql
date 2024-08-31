/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020, 2021, 2024  AO Industries, Inc.
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

create sequence         pki."CertificateName_id_seq" cycle;
grant all            on pki."CertificateName_id_seq" to aoadmin;
grant select         on pki."CertificateName_id_seq" to aoserv_app;
grant select, update on pki."CertificateName_id_seq" to management;

create table pki."CertificateName" (
  id integer
    default nextval('pki."CertificateName_id_seq"')
    primary key,
  ssl_certificate integer
    not null,
  is_common_name boolean
    not null,
  is_wildcard boolean
    not null,
  "domain" "com.aoapps.net"."DomainName"
    not null
);
grant all                            on pki."CertificateName" to aoadmin;
grant select                         on pki."CertificateName" to aoserv_app;
grant select, insert                 on pki."CertificateName" to management;
grant select, insert, update, delete on pki."CertificateName" to management;
