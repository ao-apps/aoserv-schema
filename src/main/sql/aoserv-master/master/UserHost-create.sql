/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2018, 2020  AO Industries, Inc.
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

create sequence         master."UserHost_id_seq" cycle;
grant all            on master."UserHost_id_seq" to aoadmin;
grant select, update on master."UserHost_id_seq" to management; -- For aoserv-daemon users only

/*
TODO: When a master.User has no net.Host listed, it is considered a
superuser with access to all net.Host and all data.  While this is clever, it
is clever in the way a SQL DELETE will remove all data when you forget the
WHERE clause.  This is too risky.  Find a better way, roles or another flag
in master.User.
 */
create table master."UserHost" (
  id integer
    default nextval('master."UserHost_id_seq"')
    primary key,
  username text
    not null,
  server integer
    not null,
  unique(username, server)
);
grant all    on master."UserHost" to aoadmin;
grant select on master."UserHost" to aoserv_app;
grant insert on master."UserHost" to management; -- TODO: For aoserv-daemon users only - trigger/view to enforce?
