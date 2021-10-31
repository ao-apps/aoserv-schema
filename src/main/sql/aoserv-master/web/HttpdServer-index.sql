/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2007, 2009, 2010, 2013, 2018, 2020  AO Industries, Inc.
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

create unique index "HttpdServer_noname_uni" on web."HttpdServer" (
  ao_server
) where "name" is null;
create unique index "HttpdServer_name_uni" on web."HttpdServer" (
  ao_server,
  "name"
) where "name" is not null;

-- This index ensures a unique name after encoding.  The only thing that is
-- not one-to-one on the systemd encoding is '/' to '-'.  We are assuming
-- UTF-8 encoding, which matches the implementation in HttpdServerManager and
-- the default encoding for all our servers.
--
-- See https://www.freedesktop.org/software/systemd/man/systemd.unit.html
-- See HttpdServer.getSystemdEscapedName()
--create unique index "HttpdServer_name_encoded_uni" on web."HttpdServer" (
--  ao_server,
--  convert_to(replace("name", '/', '-'), 'UTF8') -- replace before convert_to is OK since UTF-8 encoding never encodes into ASCII space
--) where "name" is not null;
-- Conversion to UTF-8 bytea is unnecessary:
create unique index "HttpdServer_name_encoded_uni" on web."HttpdServer" (
  ao_server,
  replace("name", '/', '-')
) where "name" is not null;

create index "HttpdServer_linux_server_account_fkey" on web."HttpdServer" (
  linux_server_account
);
create index "HttpdServer_linux_server_group_fkey" on web."HttpdServer" (
  linux_server_group
);
create index "HttpdServer_mod_php_version_fkey" on web."HttpdServer" (
  mod_php_version
);
create index "HttpdServer_package_fkey" on web."HttpdServer" (
  package
);
