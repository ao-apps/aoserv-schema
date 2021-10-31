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

select "schema".add_column('account', 'business_servers', 'pkey',                       'pkey',       false,  true, false, 'a generated primary key', '1.0a100', null);
select "schema".add_column('account', 'business_servers', 'accounting',                 'accounting', false, false, false, 'the business', '1.0a100', null);
select "schema".add_column('account', 'business_servers', 'server',                     'fkey',       false, false, false, 'the server', '1.0a100', null);
select "schema".add_column('account', 'business_servers', 'is_default',                 'boolean',    false, false, false, 'if <code>true</code>, this is the default server.', '1.0a100', null);
select "schema".add_column('account', 'business_servers', 'can_configure_backup',       'boolean',    false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('account', 'business_servers', 'can_control_apache',         'boolean',    false, false, false, '', '1.0a100', null);
select "schema".add_column('account', 'business_servers', 'can_control_cron',           'boolean',    false, false, false, '', '1.0a100', null);
select "schema".add_column('account', 'business_servers', 'can_control_interbase',      'boolean',    false, false, false, '', '1.0a100', '1.30');
select "schema".add_column('account', 'business_servers', 'can_control_mysql',          'boolean',    false, false, false, '', '1.0a100', null);
select "schema".add_column('account', 'business_servers', 'can_control_postgresql',     'boolean',    false, false, false, '', '1.0a100', null);
select "schema".add_column('account', 'business_servers', 'can_control_xfs',            'boolean',    false, false, false, '', '1.0a100', null);
select "schema".add_column('account', 'business_servers', 'can_control_xvfb',           'boolean',    false, false, false, '', '1.0a100', null);
select "schema".add_column('account', 'business_servers', 'can_vnc_console',            'boolean',    false, false, false, '', '1.51', null);
select "schema".add_column('account', 'business_servers', 'can_control_virtual_server', 'boolean',    false, false, false, '', '1.64', null);
