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

select "schema".add_foreign_key('billing', 'transactions', 'accounting',              'account',    'businesses',               'accounting',  '1.0a100', null);
select "schema".add_foreign_key('billing', 'transactions', 'source_accounting',       'account',    'businesses',               'accounting',  '1.0a100', null);
select "schema".add_foreign_key('billing', 'transactions', 'username',                'account',    'business_administrators',  'username',    '1.0a100', null);
select "schema".add_foreign_key('billing', 'transactions', 'type',                    'billing',    'rates',                    'name',        '1.0a100', '1.0a122');
select "schema".add_foreign_key('billing', 'transactions', 'type',                    'billing',    'transaction_types',        'name',        '1.0a123', null);
select "schema".add_foreign_key('billing', 'transactions', 'payment_type',            'payment',    'payment_types',            'name',        '1.0a100', null);
select "schema".add_foreign_key('billing', 'transactions', 'merchant_account',        'accounting', 'merchant_accounts',        'name',        '1.0a100', '1.28');
select "schema".add_foreign_key('billing', 'transactions', 'processor',               'payment',    'credit_card_processors',   'provider_id', '1.29',    null);
select "schema".add_foreign_key('billing', 'transactions', 'credit_card_transaction', 'payment',    'credit_card_transactions', 'pkey',        '1.29',    null);
