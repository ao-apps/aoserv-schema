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

select "schema".add_column('signup', 'signup_requests', 'pkey',                 'pkey',       false,  true, false, 'a generate unique id', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'accounting',           'accounting', false, false, false, 'the accounting code of the parent business for the new account', '1.23', '1.43');
select "schema".add_column('signup', 'signup_requests', 'brand',                'accounting', false, false, false, 'the brand of the parent business for the new account', '1.44', null);
select "schema".add_column('signup', 'signup_requests', 'time',                 'time',       false, false, false, 'the time the request was added', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'ip_address',           'ip_address', false, false, false, 'the IP address of the user who signed-up', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'package_definition',   'fkey',       false, false, false, 'the pkey of the Package Definition requested', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'business_name',        'string',     false, false, false, 'the name of the business', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'business_phone',       'string',     false, false, false, 'the phone number of the business', '1.23', '1.68');
select "schema".add_column('signup', 'signup_requests', 'business_phone',       'phone',      false, false, false, 'the phone number of the business', '1.69', null);
select "schema".add_column('signup', 'signup_requests', 'business_fax',         'string',      true, false, false, 'the fax number of the business', '1.23', '1.68');
select "schema".add_column('signup', 'signup_requests', 'business_fax',         'phone',       true, false, false, 'the fax number of the business', '1.69', null);
select "schema".add_column('signup', 'signup_requests', 'business_address1',    'string',     false, false, false, 'the street address of the business', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'business_address2',    'string',      true, false, false, 'the street address of the business', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'business_city',        'city',       false, false, false, 'the city  of the business', '1.23', '1.68');
select "schema".add_column('signup', 'signup_requests', 'business_city',        'string',     false, false, false, 'the city  of the business', '1.69', null);
select "schema".add_column('signup', 'signup_requests', 'business_state',       'state',       true, false, false, 'the state or providence of the business', '1.23', '1.68');
select "schema".add_column('signup', 'signup_requests', 'business_state',       'string',      true, false, false, 'the state or providence of the business', '1.69', null);
select "schema".add_column('signup', 'signup_requests', 'business_country',     'country',    false, false, false, 'the two-character country code of the business', '1.23', '1.68');
select "schema".add_column('signup', 'signup_requests', 'business_country',     'string',     false, false, false, 'the two-character country code of the business', '1.69', null);
select "schema".add_column('signup', 'signup_requests', 'business_zip',         'zip',         true, false, false, 'the zip code of the business', '1.23', '1.68');
select "schema".add_column('signup', 'signup_requests', 'business_zip',         'string',      true, false, false, 'the zip code of the business', '1.69', null);
select "schema".add_column('signup', 'signup_requests', 'ba_name',              'string',     false, false, false, 'the administrator''s name', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'ba_title',             'string',      true, false, false, 'the administrator''s title', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'ba_work_phone',        'string',     false, false, false, 'the administrator''s work phone', '1.23', '1.68');
select "schema".add_column('signup', 'signup_requests', 'ba_work_phone',        'string',     false, false, false, 'the administrator''s work phone', '1.69', null);
select "schema".add_column('signup', 'signup_requests', 'ba_cell_phone',        'string',      true, false, false, 'the administrator''s cell phone', '1.23', '1.68');
select "schema".add_column('signup', 'signup_requests', 'ba_cell_phone',        'string',      true, false, false, 'the administrator''s cell phone', '1.69', null);
select "schema".add_column('signup', 'signup_requests', 'ba_home_phone',        'string',      true, false, false, 'the administrator''s home phone', '1.23', '1.68');
select "schema".add_column('signup', 'signup_requests', 'ba_home_phone',        'string',      true, false, false, 'the administrator''s home phone', '1.69', null);
select "schema".add_column('signup', 'signup_requests', 'ba_fax',               'string',      true, false, false, 'the administrator''s fax number', '1.23', '1.68');
select "schema".add_column('signup', 'signup_requests', 'ba_fax',               'string',      true, false, false, 'the administrator''s fax number', '1.69', null);
select "schema".add_column('signup', 'signup_requests', 'ba_email',             'email',      false, false, false, 'the administrator''s email address', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'ba_address1',          'string',      true, false, false, 'the street address of the administrator', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'ba_address2',          'string',      true, false, false, 'the street address of the administrator', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'ba_city',              'city',        true, false, false, 'the city of the administrator', '1.23', '1.68');
select "schema".add_column('signup', 'signup_requests', 'ba_city',              'string',      true, false, false, 'the city of the administrator', '1.69', null);
select "schema".add_column('signup', 'signup_requests', 'ba_state',             'state',       true, false, false, 'the state or providence of the administrator', '1.23', '1.68');
select "schema".add_column('signup', 'signup_requests', 'ba_state',             'string',      true, false, false, 'the state or providence of the administrator', '1.69', null);
select "schema".add_column('signup', 'signup_requests', 'ba_country',           'country',     true, false, false, 'the two-character country code of the administrator', '1.23', '1.68');
select "schema".add_column('signup', 'signup_requests', 'ba_country',           'string',      true, false, false, 'the two-character country code of the administrator', '1.69', null);
select "schema".add_column('signup', 'signup_requests', 'ba_zip',               'zip',         true, false, false, 'the zip code of the administrator', '1.23', '1.68');
select "schema".add_column('signup', 'signup_requests', 'ba_zip',               'string',      true, false, false, 'the zip code of the administrator', '1.69', null);
select "schema".add_column('signup', 'signup_requests', 'ba_username',          'username',   false, false, false, 'the username of the administrator', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'billing_contact',      'string',     false, false, false, 'the name of the billing contact', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'billing_email',        'email',      false, false, false, 'the email address of the billing contact', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'billing_use_monthly',  'boolean',    false, false, false, 'if true, the credit_card will be used every month automatically', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'billing_pay_one_year', 'boolean',    false, false, false, 'if true, one-year in advance will be charged to the credit_card and they will receive a credit for a free month', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'encrypted_data',       'string',     false, false, false, 'the credit card details and password are stored encrypted', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'encryption_from',      'fkey',       false, false, false, 'the from that was used for encryption', '1.31', null);
select "schema".add_column('signup', 'signup_requests', 'encryption_key',       'fkey',       false, false, false, 'the recipient that was used for encryption', '1.23', '1.30');
select "schema".add_column('signup', 'signup_requests', 'encryption_recipient', 'fkey',       false, false, false, 'the recipient that was used for encryption', '1.31', null);
select "schema".add_column('signup', 'signup_requests', 'completed_by',         'username',    true, false, false, 'the username of the person who completed this sign-up request', '1.23', null);
select "schema".add_column('signup', 'signup_requests', 'completed_time',       'time',        true, false, false, 'the time this request was completed', '1.23', null);
