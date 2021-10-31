/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2009, 2013, 2018, 2019, 2020  AO Industries, Inc.
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

create table account."User" (
  -- TODO: Rename to "name"
  username text
    primary key
    -- TODO: account.User.Name DOMAIN instead
    check (
      -- Control account.User for Cyrus user@domain use in virtdomains
          username not like '@%'        -- Can't start with @
      and username not like '%@'        -- Can't end with @
      and username not like '%@%@%'     -- Can't have more than one @
      and username not like 'cyrus@%'   -- Can't start with cyrus
      and username not like '%@default' -- Can't end with @default
    ),
  package text
    not null,
  disable_log integer
);
grant all                            on account."User" to aoadmin;
grant select, insert, update, delete on account."User" to aoserv_app;
grant select                         on account."User" to accounting;
grant insert                         on account."User" to management;
