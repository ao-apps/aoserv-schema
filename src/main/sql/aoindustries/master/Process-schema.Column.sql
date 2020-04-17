/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020  AO Industries, Inc.
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

select "schema".add_column('master', 'master_processes', 'process_id',         'long',            false,  true, false, '', '1.0a100', '1.82.1');
select "schema".add_column('master', 'master_processes', 'id',                 'SmallIdentifier', false,  true, false, '', '1.83.0',  null);
select "schema".add_column('master', 'master_processes', 'connector_id',       'long',             true, false, false, '', '1.0a100', '1.82.1');
select "schema".add_column('master', 'master_processes', 'connectorId' ,       'Identifier',       true, false, false, '', '1.83.0',  null);
select "schema".add_column('master', 'master_processes', 'authenticated_user', 'username',         true, false, false, '', '1.0a100', null);
select "schema".add_column('master', 'master_processes', 'effective_user',     'username',         true, false, false, '', '1.0a100', null);
select "schema".add_column('master', 'master_processes', 'daemon_server',      'fkey',             true, false, false, '', '1.0a100', null);
select "schema".add_column('master', 'master_processes', 'host',               'ip_address',      false, false, false, '', '1.0a100', null);
select "schema".add_column('master', 'master_processes', 'protocol',           'string',          false, false, false, '', '1.0a100', null);
select "schema".add_column('master', 'master_processes', 'aoserv_protocol',    'string',           true, false, false, '', '1.0a101', null);
select "schema".add_column('master', 'master_processes', 'is_secure',          'boolean',         false, false, false, '', '1.0a100', null);
select "schema".add_column('master', 'master_processes', 'connect_time',       'time',            false, false, false, '', '1.0a100', null);
select "schema".add_column('master', 'master_processes', 'use_count',          'long',            false, false, false, '', '1.0a100', null);
select "schema".add_column('master', 'master_processes', 'total_time',         'interval',        false, false, false, '', '1.0a100', null);
select "schema".add_column('master', 'master_processes', 'priority',           'int',             false, false, false, '', '1.0a100', null);
select "schema".add_column('master', 'master_processes', 'state',              'string',          false, false, false, '', '1.0a100', null);
select "schema".add_column('master', 'master_processes', 'command',            'string',           true, false, false, '', '1.0a100', null);
select "schema".add_column('master', 'master_processes', 'state_start_time',   'time',            false, false, false, '', '1.0a100', null);
