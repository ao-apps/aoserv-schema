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

select "schema".add_column('billing', 'monthly_charges', 'pkey',        'pkey',        true,  true, false, 'a unique, generated number for reference',          '1.0a100', null);
select "schema".add_column('billing', 'monthly_charges', 'accounting',  'accounting', false, false, false, 'the account code that is charged to',               '1.0a100', null);
select "schema".add_column('billing', 'monthly_charges', 'package',     'package',    false, false, false, 'the package that this is charged for',              '1.0a100', '1.80');
select "schema".add_column('billing', 'monthly_charges', 'package',     'accounting', false, false, false, 'the package that this is charged for',              '1.80.0',  null);
select "schema".add_column('billing', 'monthly_charges', 'type',        'string',     false, false, false, 'the type of charge, as found in transaction types', '1.0a100', null);
select "schema".add_column('billing', 'monthly_charges', 'description', 'string',      true, false, false, 'the description that is placed in the transaction', '1.0a100', null);
select "schema".add_column('billing', 'monthly_charges', 'quantity',    'decimal_3',  false, false, false, 'the quantity',                                      '1.0a100', null);
select "schema".add_column('billing', 'monthly_charges', 'rate',        'decimal_2',  false, false, false, 'the rate',                                          '1.0a100', '1.82.1');
select "schema".add_column('billing', 'monthly_charges', 'rate',        'money',      false, false, false, 'the rate',                                          '1.83.0',  null);
select "schema".add_column('billing', 'monthly_charges', 'created',     'time',       false, false, false, 'the time this entry was created',                   '1.0a100', null);
select "schema".add_column('billing', 'monthly_charges', 'created_by',  'username',   false, false, false, 'the business_administrator who created the entry',  '1.0a100', null);
select "schema".add_column('billing', 'monthly_charges', 'active',      'boolean',    false, false, false, 'flags if this entry is active',                     '1.0a100', null);
