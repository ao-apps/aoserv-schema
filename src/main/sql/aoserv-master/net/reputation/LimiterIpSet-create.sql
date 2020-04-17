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

/* TODO
create sequence         "net.reputation"."LimiterIpSet_id_seq" cycle;
grant all            on "net.reputation"."LimiterIpSet_id_seq" to aoadmin;
--grant select, update on "net.reputation"."LimiterIpSet_id_seq" to aoserv_app;

-- Each limiter may use one or more manual sets for whitelist or blacklist.
-- The order is: 1) Whitelist 2) Blacklist 3) Reputation-based

create table "net.reputation"."LimiterIpSet" (
  id integer
    default nextval('"net.reputation"."LimiterIpSet_id_seq"')
    primary key,
  limiter integer not null,
  "set" integer not null,
  "class" "net.reputation"."Class" not null
    check ("class" in ('gm', 'bm')),
  unique(limiter, "set")
);
grant all    on "net.reputation"."LimiterIpSet" to aoadmin;
grant select on "net.reputation"."LimiterIpSet" to aoserv_app;
 */
