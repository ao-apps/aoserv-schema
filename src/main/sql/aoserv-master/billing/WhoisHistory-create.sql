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

create sequence         billing."WhoisHistory_id_seq" cycle;
grant all            on billing."WhoisHistory_id_seq" to aoadmin;
grant select, update on billing."WhoisHistory_id_seq" to aoserv_app;

-- TODO: Consider a WhoisHistoryClass, which stores the broad category of where used, such as
--       "web", "certificate", "email", ..., and maybe the sources (or ResourceType, once we have Resource from ao-rtd)
--       or a full-on reference, on delete cascade, to each resource linked to the whois history, with counts too for long-term when resources removed
create table billing."WhoisHistory" (
  id integer
    default nextval('billing."WhoisHistory_id_seq"')
    primary key,
  "registrableDomain" "com.aoindustries.net"."DomainName"
    not null,
  "time" timestamp with time zone
    default now()
    not null,
  "exitStatus" integer,
  -- The output is often unchanged between lookups.  Could save space by putting in a table of shared values,
  -- quick look-up by md5 function (non-unique on md5 since collisions possible, but could narrow the search) - duplicate values wouldn't really
  -- hurt so could avoid the index overhead of enforcing a full uniqueness by complete text
  "output" text
    not null,
  error text
    not null
);
grant all                    on billing."WhoisHistory" to aoadmin;
grant select, insert, delete on billing."WhoisHistory" to aoserv_app;
