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

select "schema".add_column('email', 'majordomo_lists', 'email_list',                'fkey',   false,  true, false, 'the email list that this majordomo_list represents', '1.0a100', null);
select "schema".add_column('email', 'majordomo_lists', 'majordomo_server',          'fkey',   false, false, false, 'the majordomo_server that this list is part of', '1.0a100', null);
select "schema".add_column('email', 'majordomo_lists', 'name',                      'string', false, false, false, 'the list name', '1.0a100', null);
select "schema".add_column('email', 'majordomo_lists', 'listname_pipe_add',         'fkey',   false,  true, false, 'the pipe address the list responds to.  Example: test@aoindustries.com', '1.0a100', null);
select "schema".add_column('email', 'majordomo_lists', 'listname_list_add',         'fkey',   false,  true, false, 'the list address that accesses the raw list contents.  Example: test-list@aoindustries.com', '1.0a100', null);
select "schema".add_column('email', 'majordomo_lists', 'owner_listname_add',        'fkey',   false,  true, false, 'the owner of the list.  Example: owner-test@aoindustries.com', '1.0a100', null);
select "schema".add_column('email', 'majordomo_lists', 'listname_owner_add',        'fkey',   false,  true, false, 'the owner of the list.  Example: test-owner@aoindustries.com', '1.0a100', null);
select "schema".add_column('email', 'majordomo_lists', 'listname_approval_add',     'fkey',   false,  true, false, 'the person who retrieves approval notifications.  Example: test-approval@aoindustries.com', '1.0a100', null);
select "schema".add_column('email', 'majordomo_lists', 'listname_request_pipe_add', 'fkey',   false,  true, false, 'the address that Majordomo requests may be sent to.  Example: test-request@aoindustries.com', '1.0a100', null);
