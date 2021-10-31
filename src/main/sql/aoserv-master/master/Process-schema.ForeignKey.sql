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

select "schema".add_foreign_key('master', 'master_processes', 'authenticated_user', 'account', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('master', 'master_processes', 'effective_user',     'account', 'business_administrators', 'username', '1.0a100', null);
select "schema".add_foreign_key('master', 'master_processes', 'daemon_server',      'linux',   'ao_servers',              'server',   '1.0a100', null);
select "schema".add_foreign_key('master', 'master_processes', 'aoserv_protocol',    'schema',  'aoserv_protocols',        'version',  '1.0a101', null);
