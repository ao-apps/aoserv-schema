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

create table "net.management"."IpAddressJustifyingProtocol" (
  "appProtocol" text
    primary key,
  justied boolean
    not null,
  comment text
);
grant all on "net.management"."IpAddressJustifyingProtocol" to aoadmin;

comment on table "net.management"."IpAddressJustifyingProtocol" is
'The set of protocols that justify alias IP addresses on a server.
When an IP address does not have any of these services running on it, it is
a candidate for release from the server.';
