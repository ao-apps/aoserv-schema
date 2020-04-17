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

select "schema".add_column('accounting', 'bank_transactions', 'id',               'pkey',      false,  true, false, 'a unique identifier for the transaction', '1.81.18', null);
select "schema".add_column('accounting', 'bank_transactions', 'time',             'time',      false, false, false, 'the time the transaction occured', '1.0a100', null);
select "schema".add_column('accounting', 'bank_transactions', 'transid',          'int',       false,  true, false, 'a unique identifier for the transaction', '1.0a100', '1.68');
select "schema".add_column('accounting', 'bank_transactions', 'transid',          'pkey',      false,  true, false, 'a unique identifier for the transaction', '1.69', '1.81.17');
select "schema".add_column('accounting', 'bank_transactions', 'bank_account',     'string',    false, false, false, 'the account the transaction is for', '1.0a100', '1.81.17');
select "schema".add_column('accounting', 'bank_transactions', 'account',          'string',    false, false, false, 'the account the transaction is for', '1.81.18', null);
select "schema".add_column('accounting', 'bank_transactions', 'merchant_account', 'string',     true, false, false, 'the merchant account the transaction is for', '1.0a100', '1.28');
select "schema".add_column('accounting', 'bank_transactions', 'processor',        'string',     true, false, false, 'the credit card processor used by this transaction', '1.29', null);
select "schema".add_column('accounting', 'bank_transactions', 'administrator',    'username',  false, false, false, 'the business_administrator who made this transaction', '1.0a100', null);
select "schema".add_column('accounting', 'bank_transactions', 'type',             'string',    false, false, false, 'the type of transaction', '1.0a100', null);
select "schema".add_column('accounting', 'bank_transactions', 'expense_code',     'string',     true, false, false, 'the category in which this expense belongs', '1.0a100', '1.81.17');
select "schema".add_column('accounting', 'bank_transactions', 'expenseCategory',  'string',     true, false, false, 'the category in which this expense belongs', '1.81.18', null);
select "schema".add_column('accounting', 'bank_transactions', 'description',      'string',    false, false, false, 'a description of the transaction', '1.0a100', null);
select "schema".add_column('accounting', 'bank_transactions', 'check_no',         'string',     true, false, false, 'the check number (if available)', '1.0a100', '1.81.17');
select "schema".add_column('accounting', 'bank_transactions', 'checkNo',          'string',     true, false, false, 'the check number (if available)', '1.81.18', null);
select "schema".add_column('accounting', 'bank_transactions', 'amount',           'decimal_2', false, false, false, 'the amount (negative for withdrawal)', '1.0a100', null);
select "schema".add_column('accounting', 'bank_transactions', 'confirmed',        'boolean',   false, false, false, 'the confirmation status with bank', '1.0a100', null);
