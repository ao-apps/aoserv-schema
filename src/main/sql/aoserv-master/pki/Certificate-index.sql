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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

create index "Certificate_package_fkey" on pki."Certificate" (
  package
);
create unique index "Certificate_key_file_uni" on pki."Certificate" (
  ao_server,
  key_file
);
create unique index "Certificate_csr_file_uni" on pki."Certificate" (
  ao_server,
  csr_file
);
create unique index "Certificate_cert_file_uni" on pki."Certificate" (
  ao_server,
  cert_file
);
create unique index "Certificate_certbot_name_uni" on pki."Certificate" (
  certbot_name,
  ao_server
) where certbot_name is not null;
