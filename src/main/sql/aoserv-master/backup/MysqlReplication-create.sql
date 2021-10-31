/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2007, 2009, 2013, 2014, 2018, 2020  AO Industries, Inc.
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

create sequence         backup."MysqlReplication_id_seq" cycle;
grant all            on backup."MysqlReplication_id_seq" to aoadmin;
grant select, update on backup."MysqlReplication_id_seq" to aoserv_app;

create table backup."MysqlReplication" (
  id integer
    default nextval('backup."MysqlReplication_id_seq"')
    primary key,
  ao_server integer,
  replication integer,
  check ( -- Must be one or the other
    (ao_server is not null and replication is null)
    or (ao_server is null and replication is not null)
  ),
  mysql_server integer
    not null,
  monitoring_seconds_behind_low integer check (monitoring_seconds_behind_low is null or monitoring_seconds_behind_low>0),
  monitoring_seconds_behind_medium integer check (monitoring_seconds_behind_medium is null or monitoring_seconds_behind_low is not null and monitoring_seconds_behind_medium>monitoring_seconds_behind_low),
  monitoring_seconds_behind_high integer check (monitoring_seconds_behind_high is null or monitoring_seconds_behind_medium is not null and monitoring_seconds_behind_high>monitoring_seconds_behind_medium),
  monitoring_seconds_behind_critical integer check (monitoring_seconds_behind_critical is null or monitoring_seconds_behind_high is not null and monitoring_seconds_behind_critical>monitoring_seconds_behind_high),
  max_alert_level monitoring."AlertLevel"
    not null
    default 'UNKNOWN'
);
grant all    on backup."MysqlReplication" to aoadmin;
grant select on backup."MysqlReplication" to aoserv_app;
