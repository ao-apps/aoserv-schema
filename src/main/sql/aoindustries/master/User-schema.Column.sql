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

select "schema".add_column('master', 'master_users', 'username',                   'username', false,  true, false, 'the unique username of the user', '1.0a100', null);
select "schema".add_column('master', 'master_users', 'is_active',                  'boolean',  false, false, false, 'this level of access may be disabled', '1.0a100', null);
select "schema".add_column('master', 'master_users', 'can_access_accounting',      'boolean',  false, false, false, 'if they can access accounting resources', '1.0a100', null);
select "schema".add_column('master', 'master_users', 'can_access_bank_accounting', 'boolean',  false, false, false, 'if they can access bank account info', '1.0a100', null);
select "schema".add_column('master', 'master_users', 'can_invalidate_tables',      'boolean',  false, false, false, 'if they can invalidate master tables', '1.0a100', null);
select "schema".add_column('master', 'master_users', 'can_access_admin_web',       'boolean',  false, false, false, 'if they can access administrative web pages', '1.0a100', null);
select "schema".add_column('master', 'master_users', 'is_ticket_admin',            'boolean',  false, false, false, 'if they can access ticket admin stuff', '1.0a100', '1.43');
select "schema".add_column('master', 'master_users', 'is_dns_admin',               'boolean',  false, false, false, 'if they can access all DNS stuff', '1.0a100', null);
select "schema".add_column('master', 'master_users', 'can_switch_users',           'boolean',  false, false, false, '', '1.0a100', '1.0a117');
select "schema".add_column('master', 'master_users', 'is_router',                  'boolean',  false, false, false, 'if they read all router stuff', '1.65', null);
select "schema".add_column('master', 'master_users', 'is_cluster_admin',           'boolean',  false, false, false, 'if they can control cluster resources', '1.73', null);
