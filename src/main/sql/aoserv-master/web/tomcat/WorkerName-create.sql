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

-- TODO: Generate these client-side algorithmically, like how we switched NetPort and LinuxId
--       Alternatively, allow named workers, but with careful naming constraints.
--       The auto-generation of these worker names could simply use the same algorithm
--       Used to initially populate this table.
create table "web.tomcat"."WorkerName" (
  code character(2)
    primary key
);
grant all    on "web.tomcat"."WorkerName" to aoadmin;
grant select on "web.tomcat"."WorkerName" to aoserv_app;
