/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2010, 2013, 2018, 2020, 2021  AO Industries, Inc.
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

create sequence         net."Device_id_seq" cycle;
grant all            on net."Device_id_seq" to aoadmin;
grant select, update on net."Device_id_seq" to infrastructure;
grant select, update on net."Device_id_seq" to management;

create table net."Device" (
  id integer
    default nextval('net."Device_id_seq"')
    primary key,
  server integer
    not null,
  "deviceId" text
    not null,
  description text
    not null,
  delete_route text,
  gateway "com.aoapps.net"."InetAddress",
  network "com.aoapps.net"."InetAddress",
  broadcast "com.aoapps.net"."InetAddress",
  mac_address macaddr,
  max_bit_rate bigint,
  monitoring_bit_rate_low bigint,
  monitoring_bit_rate_medium bigint check (monitoring_bit_rate_medium is null or monitoring_bit_rate_low is not null and monitoring_bit_rate_medium>monitoring_bit_rate_low),
  monitoring_bit_rate_high bigint check (monitoring_bit_rate_high is null or monitoring_bit_rate_medium is not null and monitoring_bit_rate_high>monitoring_bit_rate_medium),
  monitoring_bit_rate_critical bigint check (monitoring_bit_rate_critical is null or monitoring_bit_rate_high is not null and monitoring_bit_rate_critical>monitoring_bit_rate_high),
  monitoring_enabled boolean
    not null
    default true,
  unique(server, "deviceId")
);
grant all                    on net."Device" to aoadmin;
grant select                 on net."Device" to aoserv_app;
grant select, insert, update on net."Device" to infrastructure;
grant select, insert         on net."Device" to management;
