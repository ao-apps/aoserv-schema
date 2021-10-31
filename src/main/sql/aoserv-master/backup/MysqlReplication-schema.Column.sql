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

select "schema".add_column('backup', 'failover_mysql_replications', 'pkey',                               'pkey',   false,  true, false, 'a generated, unique id', '1.28', null);
select "schema".add_column('backup', 'failover_mysql_replications', 'ao_server',                          'fkey',    true, false, false, 'the ao_server the receives the replication', '1.59', null);
select "schema".add_column('backup', 'failover_mysql_replications', 'replication',                        'fkey',   false, false, false, 'the failover server that receives the replication', '1.28', '1.58');
select "schema".add_column('backup', 'failover_mysql_replications', 'replication',                        'fkey',    true, false, false, 'the failover server that receives the replication', '1.59', null);
select "schema".add_column('backup', 'failover_mysql_replications', 'mysql_server',                       'fkey',   false, false, false, 'the MySQL Server that is being replicated', '1.28', null);
select "schema".add_column('backup', 'failover_mysql_replications', 'monitoring_seconds_behind_low',      'int',     true, false, false, 'the seconds behind where will trigger low alert level', '1.56', null);
select "schema".add_column('backup', 'failover_mysql_replications', 'monitoring_seconds_behind_medium',   'int',     true, false, false, 'the seconds behind where will trigger medium alert level', '1.56', null);
select "schema".add_column('backup', 'failover_mysql_replications', 'monitoring_seconds_behind_high',     'int',     true, false, false, 'the seconds behind where will trigger high alert level', '1.56', null);
select "schema".add_column('backup', 'failover_mysql_replications', 'monitoring_seconds_behind_critical', 'int',     true, false, false, 'the seconds behind where will trigger critical alert level', '1.56', null);
select "schema".add_column('backup', 'failover_mysql_replications', 'max_alert_level',                    'string', false, false, false, 'the maximum alert level for all monitoring of this slave', '1.74', null);
