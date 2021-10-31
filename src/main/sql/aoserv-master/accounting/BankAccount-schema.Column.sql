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

select "schema".add_column('accounting', 'bank_accounts', 'name',             'string', false,  true, false, 'the unique name of this account', '1.0a100', null);
select "schema".add_column('accounting', 'bank_accounts', 'display',          'string', false, false, false, 'the display name of this account', '1.0a100', null);
select "schema".add_column('accounting', 'bank_accounts', 'bank',             'string', false, false, false, 'the bank the account is with', '1.0a100', null);
select "schema".add_column('accounting', 'bank_accounts', 'deposit_delay',    'int',    false, false, false, 'the number of business days it takes for a deposit to be sent to the bank account', '1.0a100', '1.81.17');
select "schema".add_column('accounting', 'bank_accounts', 'depositDelay' ,    'int',    false, false, false, 'the number of business days it takes for a deposit to be sent to the bank account', '1.81.18', null);
select "schema".add_column('accounting', 'bank_accounts', 'withdrawal_delay', 'int',    false, false, false, 'the number of business days it takes for a withdrawal to be taken from the bank account', '1.0a100', '1.81.17');
select "schema".add_column('accounting', 'bank_accounts', 'withdrawalDelay',  'int',    false, false, false, 'the number of business days it takes for a withdrawal to be taken from the bank account', '1.81.18', null);
