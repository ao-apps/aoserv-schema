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

select "schema".add_column('profile', 'daemon_profile', 'server',      'hostname',    false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('profile', 'daemon_profile', 'ao_server',   'hostname',    false, false, false, '', '1.31',    '1.68');
select "schema".add_column('profile', 'daemon_profile', 'ao_server',   'domain_name', false, false, false, '', '1.69',    '1.76');
select "schema".add_column('profile', 'daemon_profile', 'level',       'int',         false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'daemon_profile', 'classname',   'string',      false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'daemon_profile', 'method_name', 'string',      false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'daemon_profile', 'parameter',   'string',       true, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'daemon_profile', 'use_count',   'long',        false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'daemon_profile', 'total_time',  'interval',    false, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'daemon_profile', 'min_time',    'interval',     true, false, false, '', '1.0a100', '1.76');
select "schema".add_column('profile', 'daemon_profile', 'max_time',    'interval',     true, false, false, '', '1.0a100', '1.76');
