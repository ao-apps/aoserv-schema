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

select "schema".add_column('linux', 'linux_server_groups', 'pkey',      'pkey',     false,  true, false, 'a unique key', '1.0a100', null);
select "schema".add_column('linux', 'linux_server_groups', 'name',      'string',   false, false, false, 'the group name', '1.0a100', '1.80');
select "schema".add_column('linux', 'linux_server_groups', 'name',      'group_id', false, false, false, 'the group name', '1.80.0', null);
select "schema".add_column('linux', 'linux_server_groups', 'ao_server', 'fkey',     false, false, false, 'the pkey of the ao_server the group is on', '1.0a100', null);
select "schema".add_column('linux', 'linux_server_groups', 'gid',       'int',      false, false, false, 'the gid on that machine', '1.0a100', '1.68');
select "schema".add_column('linux', 'linux_server_groups', 'gid',       'fkey',     false, false, false, 'the gid on that machine', '1.69', '1.80');
select "schema".add_column('linux', 'linux_server_groups', 'gid',       'linux_id', false, false, false, 'the gid on that machine', '1.80.0', null);
select "schema".add_column('linux', 'linux_server_groups', 'created',   'date',     false, false, false, 'the time the group was added', '1.0a100', '1.68');
select "schema".add_column('linux', 'linux_server_groups', 'created',   'time',     false, false, false, 'the time the group was added', '1.69', null);
