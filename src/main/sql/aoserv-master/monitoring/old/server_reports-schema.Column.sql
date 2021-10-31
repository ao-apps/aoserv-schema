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

select "schema".add_column('monitoring', 'server_reports', 'pkey',            'pkey',     false,  true, false, 'a unique, generated key', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'server_reports', 'time',            'time',     false, false, false, 'time these stats were reported (the ending time of the interval)', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'server_reports', 'interval',        'interval', false, false, false, 'time interval in milliseconds seconds that these stats apply to', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'server_reports', 'ao_server',       'fkey',     false, false, false, 'the pkey of the server that these stats are for', '1.0a100', '1.30');
select "schema".add_column('monitoring', 'server_reports', 'failover_server', 'fkey',      true, false, false, 'the pkey of the outer server for this server at the time of this report', '1.0a100', '1.30');
