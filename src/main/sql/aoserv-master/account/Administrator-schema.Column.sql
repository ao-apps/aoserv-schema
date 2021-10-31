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

select "schema".add_column('account', 'business_administrators', 'username',         'username',        false,  true, false, 'the unique identifier for this admin', '1.0a100', null);
select "schema".add_column('account', 'business_administrators', 'password',         'string',          false, false, false, 'the encrypted password for this admin', '1.0a100', '1.68');
select "schema".add_column('account', 'business_administrators', 'password',         'hashed_password',  true, false, false, 'the encrypted password for this admin', '1.69', null);
select "schema".add_column('account', 'business_administrators', 'name',             'string',          false, false, false, 'the name of this admin', '1.0a100', null);
select "schema".add_column('account', 'business_administrators', 'title',            'string',           true, false, false, 'the admins title within their organization', '1.0a100', null);
select "schema".add_column('account', 'business_administrators', 'birthday',         'time',             true, false, false, 'the admins birthday', '1.0a100', '1.68');
select "schema".add_column('account', 'business_administrators', 'birthday',         'date',             true, false, false, 'the admins birthday', '1.69', null);
select "schema".add_column('account', 'business_administrators', 'is_preferred',     'boolean',         false, false, false, 'if true, customers is preferred', '1.0a100', null);
select "schema".add_column('account', 'business_administrators', 'private',          'boolean',         false, false, false, 'indicates if the admin should not be listed in publicly available lists', '1.0a100', null);
select "schema".add_column('account', 'business_administrators', 'created',          'time',            false, false, false, 'the time the admin entry was created', '1.0a100', null);
select "schema".add_column('account', 'business_administrators', 'work_phone',       'phone',           false, false, false, 'the work phone number (if different than business)', '1.0a100', null);
select "schema".add_column('account', 'business_administrators', 'home_phone',       'phone',            true, false, false, 'the home phone number', '1.0a100', null);
select "schema".add_column('account', 'business_administrators', 'cell_phone',       'phone',            true, false, false, 'the cellular phone number', '1.0a100', null);
select "schema".add_column('account', 'business_administrators', 'fax',              'phone',            true, false, false, 'the fax number (if different than business)', '1.0a100', null);
select "schema".add_column('account', 'business_administrators', 'email',            'email',           false, false, false, 'the email address', '1.0a100', null);
select "schema".add_column('account', 'business_administrators', 'address1',         'string',           true, false, false, 'the street address (if different than business)', '1.0a100', null);
select "schema".add_column('account', 'business_administrators', 'address2',         'string',           true, false, false, 'the street address (if different than business)', '1.0a100', null);
select "schema".add_column('account', 'business_administrators', 'city',             'city',             true, false, false, 'the city (if different than business)', '1.0a100', '1.68');
select "schema".add_column('account', 'business_administrators', 'city',             'string',           true, false, false, 'the city (if different than business)', '1.69', null);
select "schema".add_column('account', 'business_administrators', 'state',            'state',            true, false, false, 'the state (if different than business)', '1.0a100', '1.68');
select "schema".add_column('account', 'business_administrators', 'state',            'string',           true, false, false, 'the state (if different than business)', '1.69', null);
select "schema".add_column('account', 'business_administrators', 'country',          'country',          true, false, false, 'the country (if different than business)', '1.0a100', '1.68');
select "schema".add_column('account', 'business_administrators', 'country',          'string',           true, false, false, 'the country (if different than business)', '1.69', null);
select "schema".add_column('account', 'business_administrators', 'zip',              'zip',              true, false, false, 'the zip code (if different than business)', '1.0a100', '1.68');
select "schema".add_column('account', 'business_administrators', 'zip',              'string',           true, false, false, 'the zip code (if different than business)', '1.69', null);
select "schema".add_column('account', 'business_administrators', 'disable_log',      'fkey',             true, false, false, 'indicates that this account is disabled', '1.0a100', null);
select "schema".add_column('account', 'business_administrators', 'can_switch_users', 'boolean',         false, false, false, 'allows this person to switch users to any subaccounts', '1.0a118', null);
select "schema".add_column('account', 'business_administrators', 'support_code',     'string',           true,  true, false, 'used to authenticate for email-based supprt', '1.44', null);
