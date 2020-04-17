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

create unique index "GroupUser_uni_no_osv" on linux."GroupUser" (
  "group",
  "user"
) where "operatingSystemVersion" is null;
COMMENT ON index linux."GroupUser_uni_no_osv" IS 'Unique group, user when osv not provided';

create unique index "GroupUser_uni_osv" on linux."GroupUser" (
  "group",
  "user",
  "operatingSystemVersion"
) where "operatingSystemVersion" is not null;
COMMENT ON index linux."GroupUser_uni_osv" IS 'Unique group, user when osv provided';

-- TODO: How to ensure no duplicate between osv and non-osv?  Trigger?  Indexed materialized view updated by trigger (overkill)?

create index "GroupUser_user_fkey" on linux."GroupUser" (
  "user"
);

create index "GroupUser_operatingSystemVersion_fkey" on linux."GroupUser" (
  "operatingSystemVersion"
);
