/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020  AO Industries, Inc.
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

create sequence         pki."CertificateOtherUse_id_seq" cycle;
grant all            on pki."CertificateOtherUse_id_seq" to aoadmin;
grant select         on pki."CertificateOtherUse_id_seq" to aoserv_app;
grant select, update on pki."CertificateOtherUse_id_seq" to management;

create table pki."CertificateOtherUse" (
  id integer
    default nextval('pki."CertificateOtherUse_id_seq"')
    primary key,
  ssl_certificate integer
    not null,
  sort_order      smallint not null
  check (
    sort_order >= 0
  ),
  "count"         integer not null
  check (
    "count" >= 1
  ),
  display         text not null,
  unique(ssl_certificate, sort_order)
);
grant all                    on pki."CertificateOtherUse" to aoadmin;
grant select                 on pki."CertificateOtherUse" to aoserv_app;
grant select, insert, delete on pki."CertificateOtherUse" to management;
