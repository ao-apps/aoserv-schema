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

select "schema".add_column('account', 'business_profiles', 'pkey',                 'pkey',       false,  true, false, 'a unique primary key', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'accounting',           'accounting', false, false, false, 'the accounting code of the business', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'priority',             'int',        false, false, false, 'the highest priority profile is used', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'name',                 'string',     false, false, false, 'the name of the business', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'private',              'boolean',    false, false, false, E'indicates if the business should not be listed\nin publicly available lists', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'phone',                'phone',      false, false, false, 'the phone number', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'fax',                  'phone',       true, false, false, 'the fax number', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'address1',             'string',     false, false, false, 'the street address of the business', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'address2',             'string',      true, false, false, 'the street address of the business', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'city',                 'city',       false, false, false, 'the city', '1.0a100', '1.68');
select "schema".add_column('account', 'business_profiles', 'city',                 'string',     false, false, false, 'the city', '1.69', null);
select "schema".add_column('account', 'business_profiles', 'state',                'state',       true, false, false, 'the state or providence', '1.0a100', '1.68');
select "schema".add_column('account', 'business_profiles', 'state',                'string',      true, false, false, 'the state or providence', '1.69', null);
select "schema".add_column('account', 'business_profiles', 'country',              'country',    false, false, false, 'the two-character country code', '1.0a100', '1.68');
select "schema".add_column('account', 'business_profiles', 'country',              'string',     false, false, false, 'the two-character country code', '1.69', null);
select "schema".add_column('account', 'business_profiles', 'zip',                  'zip',         true, false, false, 'the zip code', '1.0a100', '1.68');
select "schema".add_column('account', 'business_profiles', 'zip',                  'string',      true, false, false, 'the zip code', '1.69', null);
select "schema".add_column('account', 'business_profiles', 'send_invoice',         'boolean',    false, false, false, 'indicates to send a monthly invoice via regular mail', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'created',              'time',       false, false, false, 'the time this entry was created', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'billing_contact',      'string',     false, false, false, 'the name to contact for billing information', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'billing_email',        'string',     false, false, false, 'the email address to notify for billing', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'billingEmailFormat',   'string',     false, false, false, 'the format for billing notification emails', '1.81.20', null);
select "schema".add_column('account', 'business_profiles', 'technical_contact',    'string',     false, false, false, 'the name to contact for technical information', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'technical_email',      'string',     false, false, false, 'the email address to notify for technical', '1.0a100', null);
select "schema".add_column('account', 'business_profiles', 'technicalEmailFormat', 'string',     false, false, false, 'the format for technical notification emails', '1.81.20', null);
