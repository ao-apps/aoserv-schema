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

create unique index "Record_uni" on dns."Record" (
  "zone",
  "domain",
  "type",
  destination
) where tag is null;

create unique index "Record_tag_uni" on dns."Record" (
  "zone",
  "domain",
  "type",
  "tag",
  destination
) where tag is not null;

create index "Record_type_fkey" on dns."Record" (
  "type"
);
create index "Record_dhcpAddress_fkey" on dns."Record" (
  "dhcpAddress"
);
