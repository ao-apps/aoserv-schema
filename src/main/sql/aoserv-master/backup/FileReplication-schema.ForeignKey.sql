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

select "schema".add_foreign_key('backup', 'failover_file_replications', 'from_server',      'linux',  'ao_servers',        'server', '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'failover_file_replications', 'server',           'net',    'servers',           'pkey',   '1.31',    null);
select "schema".add_foreign_key('backup', 'failover_file_replications', 'to_server',        'linux',  'ao_servers',        'server', '1.0a100', '1.30');
select "schema".add_foreign_key('backup', 'failover_file_replications', 'backup_partition', 'backup', 'backup_partitions', 'pkey',   '1.31',    null);
select "schema".add_foreign_key('backup', 'failover_file_replications', 'retention',        'backup', 'backup_retentions', 'days',   '1.13',    null);
select "schema".add_foreign_key('backup', 'failover_file_replications', 'quota_gid',        'linux',  'linux_ids',         'id',     '1.31',    '1.68');
select "schema".add_foreign_key('backup', 'failover_file_replications', 'quota_gid',        'linux',  'linux_ids',         'id',     '1.69',    '1.80');
