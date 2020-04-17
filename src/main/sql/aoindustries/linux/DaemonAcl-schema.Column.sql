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

select "schema".add_column('linux', 'ao_server_daemon_hosts', 'pkey',      'pkey',       false,  true, false, 'a generated unique primary key', '1.0a100', null);
select "schema".add_column('linux', 'ao_server_daemon_hosts', 'ao_server', 'fkey',       false, false, false, 'the pkey of the ao_server', '1.0a100', null);
select "schema".add_column('linux', 'ao_server_daemon_hosts', 'host',      'ip_address', false, false, false, 'the hostname or IP address that is allowed to connect', '1.0a100', '1.80');
select "schema".add_column('linux', 'ao_server_daemon_hosts', 'host',      'hostname',   false, false, false, 'the hostname or IP address that is allowed to connect', '1.80.0', null);
