/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2009, 2014, 2018, 2020  AO Industries, Inc.
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

-- TODO: aoserv_roles from aortd are a better approach - more manageable
create table master."User" (
  username text
    primary key,
  is_active boolean
    default true
    not null,
  can_access_accounting boolean
    default false
    not null,
  can_access_bank_account boolean
    default false
    not null,
  can_invalidate_tables boolean
    default false
    not null,
  can_access_admin_web boolean
    default false
    not null,
  is_dns_admin boolean
    default false
    not null,
  is_router boolean
    default false
    not null,
  is_cluster_admin boolean
    default false
    not null
);
grant all    on master."User" to aoadmin;
grant select on master."User" to aoserv_app;
grant select on master."User" to accounting;
grant insert on master."User" to management; -- TODO: For aoserv-daemon users only - trigger/view to enforce?
