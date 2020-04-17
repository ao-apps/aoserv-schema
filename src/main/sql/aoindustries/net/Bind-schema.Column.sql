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

select "schema".add_column('net', 'net_binds', 'pkey',                  'pkey',       false,  true, false, 'a generated pkey', '1.0a100', '1.81.17');
select "schema".add_column('net', 'net_binds', 'id',                    'pkey',       false,  true, false, 'a generated pkey', '1.81.18', null);
select "schema".add_column('net', 'net_binds', 'package',               'package',    false, false, false, 'the package that owns the opened port', '1.0a100', '1.80');
select "schema".add_column('net', 'net_binds', 'package',               'accounting', false, false, false, 'the package that owns the opened port', '1.80.0', null);
select "schema".add_column('net', 'net_binds', 'ao_server',             'fkey',       false, false, false, 'the pkey of the server that this port is bound on', '1.0a100', '1.32');
select "schema".add_column('net', 'net_binds', 'server',                'fkey',       false, false, false, 'the pkey of the server that this port is bound on', '1.33', null);
select "schema".add_column('net', 'net_binds', 'ip_address',            'fkey',       false, false, false, 'the pkey of the IP address that is bound to', '1.0a100', '1.81.17');
select "schema".add_column('net', 'net_binds', 'ipAddress',             'fkey',       false, false, false, 'the id of the IP address that is bound to', '1.81.18', null);
select "schema".add_column('net', 'net_binds', 'port',                  'int',        false, false, false, 'the port number that is bound', '1.0a100', '1.68');
select "schema".add_column('net', 'net_binds', 'port',                  'fkey',       false, false, false, 'the port number that is bound', '1.69', '1.80');
select "schema".add_column('net', 'net_binds', 'port',                  'net_port',   false, false, false, 'the port that is bound', '1.80.0', null);
select "schema".add_column('net', 'net_binds', 'net_protocol',          'string',     false, false, false, 'the network protocol (<code>net_protocols</code>)', '1.0a100', '1.80');
select "schema".add_column('net', 'net_binds', 'app_protocol',          'string',     false, false, false, 'the application protocol (<code>protocols</code>)', '1.0a100', null);
select "schema".add_column('net', 'net_binds', 'open_firewall',         'boolean',    false, false, false, 'flags if the firewall should be opened for this port', '1.0a100', '1.80.2');
select "schema".add_column('net', 'net_binds', 'monitor_delay',         'int',         true, false, false, '', '1.0a100', '1.0a103');
select "schema".add_column('net', 'net_binds', 'monitor_parameter',     'string',      true, false, false, '', '1.0a100', '1.0a103');
select "schema".add_column('net', 'net_binds', 'monitor_contact',       'string',      true, false, false, '', '1.0a100', '1.0a103');
select "schema".add_column('net', 'net_binds', 'monitor_info',          'string',      true, false, false, '', '1.0a100', '1.0a103');
select "schema".add_column('net', 'net_binds', 'monitoring_enabled',    'boolean',    false, false, false, 'turns on monitoring of the port', '1.0a104', null);
select "schema".add_column('net', 'net_binds', 'monitoring_parameters', 'string',      true, false, false, 'the URL-encoded name=value pairs of monitoring parameters', '1.58', null);
