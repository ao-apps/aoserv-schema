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

create unique index "SendmailServer_noname_uni" on email."SendmailServer" (
  ao_server
) where "name" is null;
create unique index "SendmailServer_name_uni" on email."SendmailServer" (
  ao_server,
  "name"
) where "name" is not null;

-- This index ensures a unique name after encoding.  The only thing that is
-- not one-to-one on the systemd encoding is '/' to '-'.  We are assuming
-- UTF-8 encoding, which matches the implementation in HttpdServerManager and
-- the default encoding for all our servers.
--
-- See https://www.freedesktop.org/software/systemd/man/systemd.unit.html
-- See SendmailServer.getSystemdEscapedName()
--create unique index "SendmailServer_name_encoded_uni" on email."SendmailServer" (
--  ao_server,
--  convert_to(replace("name", '/', '-'), 'UTF8') -- replace before convert_to is OK since UTF-8 encoding never encodes into ASCII space
--) where "name" is not null;
-- Conversion to UTF-8 bytea is unnecessary:
create unique index "SendmailServer_name_encoded_uni" on email."SendmailServer" (
  ao_server,
  replace("name", '/', '-')
) where "name" is not null;

create index "SendmailServer_package_fkey" on email."SendmailServer" (
  package
);
create index "SendmailServer_server_certificate_fkey" on email."SendmailServer" (
  server_certificate
);
create index "SendmailServer_client_certificate_fkey" on email."SendmailServer" (
  client_certificate
);
create index "SendmailServer_clientAddrInet_idx" on email."SendmailServer" (
  "clientAddrInet"
);
create index "SendmailServer_clientAddrInet6_idx" on email."SendmailServer" (
  "clientAddrInet6"
);
