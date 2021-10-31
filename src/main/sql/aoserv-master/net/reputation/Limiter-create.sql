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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

create sequence "net.reputation"."Limiter_id_seq" cycle;
grant all on    "net.reputation"."Limiter_id_seq" to aoadmin;
--grant select, update on "net.reputation"."Limiter_id_seq" to aoserv_app;

create table "net.reputation"."Limiter" (
  id integer
    default nextval('"net.reputation"."Limiter_id_seq"')
    primary key
    check (
      -- Due to encoding of iptables (and hashlimit) names, may not exceed eight characters
      id between 1 and 99999999
    ),
  net_device integer not null,
  identifier text
    not null
    check (
        -- Although this identifier is only used in a directory name at this time,
        -- its rules are defined to be consistent with net.reputation.Set.
        "net.reputation"."Set.identifier.validate"(identifier) IS NULL
    ),
  unique(net_device, identifier),
  description text
    check (
        description is null
        or (description=trim(description) and length(description)>0)
    )
);
grant all    on "net.reputation"."Limiter" to aoadmin;
grant select on "net.reputation"."Limiter" to aoserv_app;
