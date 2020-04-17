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

select "schema".add_column('accounting', 'merchant_accounts', 'name',             'string', false,  true, false, 'the unique name', '1.0a100', '1.28');
select "schema".add_column('accounting', 'merchant_accounts', 'display',          'string', false, false, false, 'the display name', '1.0a100', '1.28');
select "schema".add_column('accounting', 'merchant_accounts', 'bank_account',     'string', false, false, false, 'the bank account used in the transactions', '1.0a100', '1.28');
select "schema".add_column('accounting', 'merchant_accounts', 'java_connector',   'string',  true, false, false, 'the Java class that connects to this provider, NULL means cannot connect with Java', '1.0a100', '1.28');
select "schema".add_column('accounting', 'merchant_accounts', 'url',              'string',  true, false, false, 'the URL to connect to', '1.0a100', '1.28');
select "schema".add_column('accounting', 'merchant_accounts', 'merchant_id',      'string', false, false, false, 'the merchant ID', '1.0a100', '1.28');
select "schema".add_column('accounting', 'merchant_accounts', 'deposit_delay',    'int',    false, false, false, 'the number of business days it takes for a deposit to be sent to the bank account', '1.0a100', '1.28');
select "schema".add_column('accounting', 'merchant_accounts', 'withdrawal_delay', 'int',    false, false, false, 'the number of business days it takes for a withdrawal to be taken from the bank account', '1.0a100', '1.28');
