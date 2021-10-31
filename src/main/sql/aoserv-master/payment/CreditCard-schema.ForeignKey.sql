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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

select "schema".add_foreign_key('payment', 'credit_cards', 'accounting',                       'account', 'businesses',              'accounting',  '1.0a100', null);
select "schema".add_foreign_key('payment', 'credit_cards', 'processor_id',                     'payment', 'credit_card_processors',  'provider_id', '1.29',    null);
select "schema".add_foreign_key('payment', 'credit_cards', 'country_code',                     'payment', 'country_codes',           'code',        '1.29',    '1.68');
select "schema".add_foreign_key('payment', 'credit_cards', 'country_code',                     'payment', 'country_codes',           'code',        '1.69',    null);
select "schema".add_foreign_key('payment', 'credit_cards', 'created_by',                       'account', 'business_administrators', 'username',    '1.0a100', null);
select "schema".add_foreign_key('payment', 'credit_cards', 'encryption_card_number_from',      'pki',     'encryption_keys',         'pkey',        '1.31',    null);
select "schema".add_foreign_key('payment', 'credit_cards', 'encryption_card_number_recipient', 'pki',     'encryption_keys',         'pkey',        '1.31',    null);
select "schema".add_foreign_key('payment', 'credit_cards', 'encryption_expiration_from',       'pki',     'encryption_keys',         'pkey',        '1.31',    '1.81.22');
select "schema".add_foreign_key('payment', 'credit_cards', 'encryption_expiration_recipient',  'pki',     'encryption_keys',         'pkey',        '1.31',    '1.81.22');
