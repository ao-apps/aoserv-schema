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
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

select "schema".add_column('billing', 'transactions', 'time',                    'time',       false, false, false, 'the time the transaction occured', '1.0a100', null);
select "schema".add_column('billing', 'transactions', 'transid',                 'int',        false,  true, false, 'the unique identifier for this transaction', '1.0a100', '1.68');
select "schema".add_column('billing', 'transactions', 'transid',                 'pkey',       false,  true, false, 'the unique identifier for this transaction', '1.69', null);
select "schema".add_column('billing', 'transactions', 'accounting',              'accounting', false, false, false, 'the identifier for the business (see businesses)', '1.0a100', null);
select "schema".add_column('billing', 'transactions', 'source_accounting',       'accounting', false, false, false, 'the source of the charge to this account', '1.0a100', null);
select "schema".add_column('billing', 'transactions', 'username',                'username',   false, false, false, 'the identifier for the admin involved in the transaction (see business_administrators)', '1.0a100', null);
select "schema".add_column('billing', 'transactions', 'type',                    'string',     false, false, false, 'the type of transaction', '1.0a100', null);
select "schema".add_column('billing', 'transactions', 'description',             'string',     false, false, false, 'description of the transaction', '1.0a100', null);
select "schema".add_column('billing', 'transactions', 'quantity',                'decimal_3',  false, false, false, 'the number of times to charge the account', '1.0a100', null);
select "schema".add_column('billing', 'transactions', 'rate',                    'decimal_2',  false, false, false, 'the amount per unit of quantity', '1.0a100', '1.82.1');
select "schema".add_column('billing', 'transactions', 'rate',                    'money',      false, false, false, 'the amount per unit of quantity', '1.83.0', null);
select "schema".add_column('billing', 'transactions', 'payment_type',            'string',      true, false, false, E'the type of payment made\ncheck - check, check number will be in payment_info\nmoney_order - money order\nvisa - visa card, last four in payment_info\nmastercard - mastercard, last four in payment_info\namex - amex card, last four in payment_info\ndiscover - discover card, last four in payment_info', '1.0a100', null);
select "schema".add_column('billing', 'transactions', 'payment_info',            'string',      true, false, false, 'the payment info, such as last four of credit card number of check number', '1.0a100', null);
select "schema".add_column('billing', 'transactions', 'merchant_account',        'string',      true, false, false, 'the merchant account that the payment was processed through', '1.0a100', '1.28');
select "schema".add_column('billing', 'transactions', 'processor',               'string',      true, false, false, 'the credit card processor that handled the payment', '1.29', null);
select "schema".add_column('billing', 'transactions', 'credit_card_transaction', 'fkey',        true, false, false, 'the credit card transaction for this transaction', '1.29', null);
select "schema".add_column('billing', 'transactions', 'apr_num',                 'int',         true, false, false, 'the approval number for given transaction', '1.0a100', '1.0a127');
select "schema".add_column('billing', 'transactions', 'apr_num',                 'string',      true, false, false, 'the approval number for given transaction', '1.0a128', '1.28');
select "schema".add_column('billing', 'transactions', 'payment_confirmed',       'string',     false, false, false, E'''Y'' if the payment is confirmed\n''W'' if waiting confirmation\n''N'' if confirmation failed', '1.0a100', null);
