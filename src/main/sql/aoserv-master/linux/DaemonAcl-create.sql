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

create sequence         linux."DaemonAcl_id_seq" cycle;
grant all            on linux."DaemonAcl_id_seq" to aoadmin;
grant select         on linux."DaemonAcl_id_seq" to aoserv_app;
grant select, update on linux."DaemonAcl_id_seq" to management;

-- TODO: Same thing here as master_hosts, support cidr and require 0.0.0.0/32 or ::/128 to allow from anywhere
create table linux."DaemonAcl" (
  id integer
    default nextval('linux."DaemonAcl_id_seq"')
    primary key,
  ao_server integer
    not null,
  "host" "com.aoapps.net"."HostAddress"
    not null,
  unique(ao_server, "host")
);
grant all    on linux."DaemonAcl" to aoadmin;
grant select on linux."DaemonAcl" to aoserv_app;
grant insert on linux."DaemonAcl" to management;
