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

select "schema".add_column('backup', 'failover_file_log', 'pkey',          'pkey',    false,  true, false, 'a generated, unique id', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_log', 'replication',   'fkey',    false, false, false, 'the replication that was performed', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_log', 'start_time',    'time',    false, false, false, 'the time the replication started', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_log', 'end_time',      'time',    false, false, false, 'the time the replication finished', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_log', 'scanned',       'int',     false, false, false, 'the number of files scanned', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_log', 'updated',       'int',     false, false, false, 'the number of files updated', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_log', 'bytes',         'long',    false, false, false, 'the number of bytes transferred', '1.0a100', null);
select "schema".add_column('backup', 'failover_file_log', 'is_successful', 'boolean', false, false, false, 'keeps track of which passes completed successfully', '1.0a100', null);
