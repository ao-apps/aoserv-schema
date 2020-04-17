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

select "schema".add_column('infrastructure', 'server_farms', 'name',                     'string',  false,  true, false, 'the unique name of the farm', '1.0a100', null);
select "schema".add_column('infrastructure', 'server_farms', 'description',              'string',  false, false, false, 'a description of the farm', '1.0a100', null);
select "schema".add_column('infrastructure', 'server_farms', 'protected_net',            'string',  false, false, false, 'the x.x.x.x/xx network that is protected by the firewalls', '1.0a100', '1.30');
select "schema".add_column('infrastructure', 'server_farms', 'allow_same_server_backup', 'boolean', false, false, false, 'allows backup files to be stored on the same server as the source files', '1.0a100', '1.30');
select "schema".add_column('infrastructure', 'server_farms', 'backup_farm',              'string',  false, false, false, 'the farm that handles backup for this farm', '1.0a100', '1.30');
select "schema".add_column('infrastructure', 'server_farms', 'owner',                    'fkey',    false, false, false, 'the package that owns of the farm', '1.0a102', null);
select "schema".add_column('infrastructure', 'server_farms', 'use_restricted_smtp_port', 'boolean', false, false, false, 'outgoing servers should use restricted source ports (affects firewall rules)', '1.26', null);
