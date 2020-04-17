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

create sequence         pki."Certificate_id_seq" cycle;
grant all            on pki."Certificate_id_seq" to aoadmin;
grant select         on pki."Certificate_id_seq" to aoserv_app;
grant select, update on pki."Certificate_id_seq" to management;

create table pki."Certificate" (
  id integer
    default nextval('pki."Certificate_id_seq"')
    primary key,
  ao_server integer
    not null,
  package integer
    not null,
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  key_file "com.aoindustries.net"."Path" not null
    check (
      certbot_name is null
      or key_file = ('/etc/letsencrypt/live/' || certbot_name || '/privkey.pem')
    ),
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  csr_file "com.aoindustries.net"."Path"
    check (
      certbot_name is null
      or csr_file is null
    ),
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  cert_file "com.aoindustries.net"."Path" not null
    check (
      certbot_name is null
      or cert_file = ('/etc/letsencrypt/live/' || certbot_name || '/cert.pem')
    ),
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  chain_file "com.aoindustries.net"."Path"
    check (
      certbot_name is null
      or chain_file = ('/etc/letsencrypt/live/' || certbot_name || '/chain.pem')
    ),
  certbot_name text
    check (
      certbot_name is null
      or (
        certbot_name not like '%/%'
        -- Avoid conflict with files from cyrus-imapd-copy-certificates or sendmail-copy-certificates
        and certbot_name not in ('copy-certificates', 'README.txt')
      )
    )
);
grant all                    on pki."Certificate" to aoadmin;
grant select                 on pki."Certificate" to aoserv_app;
grant select, insert, delete on pki."Certificate" to management;
