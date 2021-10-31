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

create sequence         net."Host_id_seq" cycle;
grant all            on net."Host_id_seq" to aoadmin;
grant select, update on net."Host_id_seq" to aoserv_app;
grant select, update on net."Host_id_seq" to infrastructure;

create table net."Host" (
  id integer
    default nextval('net."Host_id_seq"')
    primary key,
  farm text
    not null,
  description text not null,
  operating_system_version integer,
  package integer not null,
  "name" text not null check (length("name") > 0 and "name" not like '%/%'),
  -- TODO: Move linux.Server.hostname back to here as "fqdn" (unique)?
  --       Will be required when this host is a linux.Server?
  --       Also, will "name" have to be the first part of fqdn, when present?  If so, it will not be unique per package.
  --       If not, will "name" have to equal fqdn?  This name thing came into existence for backup clients, so they could name their own computers arbitrarily.
  --       Finally, how does this connect into the instance names used in our infrastructure (VirtualServer).
  monitoring_enabled boolean not null default true
);
grant all                    on net."Host" to aoadmin;
grant select, insert, update on net."Host" to aoserv_app;
grant select, update         on net."Host" to billing; -- TODO: Access is for update net.Host.monitoring_enabled only
grant select, insert, update on net."Host" to infrastructure;
grant select, update         on net."Host" to management;
