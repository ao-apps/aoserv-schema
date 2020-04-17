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

select "schema".add_column('billing', 'package_definitions', 'pkey',                          'pkey',       false,  true, false, 'the unique ID of the package definition', '1.0a123', null);
select "schema".add_column('billing', 'package_definitions', 'accounting',                    'accounting', false, false, false, 'the accounting code of the seller/reseller that supports this package', '1.0a123', '1.43');
select "schema".add_column('billing', 'package_definitions', 'brand',                         'accounting', false, false, false, 'the brand of the seller/reseller that supports this package', '1.44', '1.44');
select "schema".add_column('billing', 'package_definitions', 'accounting',                    'accounting', false, false, false, 'the accounting code of the seller/reseller that supports this package', '1.45', null);
select "schema".add_column('billing', 'package_definitions', 'category',                      'string',     false, false, false, 'the package category', '1.0a123', null);
select "schema".add_column('billing', 'package_definitions', 'name',                          'string',     false, false, false, 'the name of the package', '1.0a123', null);
select "schema".add_column('billing', 'package_definitions', 'version',                       'string',     false, false, false, 'the unique version of this package', '1.0a123', null);
select "schema".add_column('billing', 'package_definitions', 'display',                       'string',     false, false, false, 'a short description for display use', '1.0a123', null);
select "schema".add_column('billing', 'package_definitions', 'description',                   'string',     false, false, false, 'a description of the package definition', '1.0a123', null);
select "schema".add_column('billing', 'package_definitions', 'setup_fee',                     'decimal_2',   true, false, false, 'the setup fee for this package definition', '1.0a123', '1.82.1');
select "schema".add_column('billing', 'package_definitions', 'setupFee',                      'money',       true, false, false, 'the setup fee for this package definition', '1.83.0', null);
select "schema".add_column('billing', 'package_definitions', 'setup_fee_transaction_type',    'string',      true, false, false, '', '1.0a123', null);
select "schema".add_column('billing', 'package_definitions', 'monthly_rate',                  'decimal_2',   true, false, false, 'the default monthly charge for this package', '1.0a123', '1.82.1');
select "schema".add_column('billing', 'package_definitions', 'monthlyRate',                   'money',       true, false, false, 'the default monthly charge for this package', '1.83.0', null);
select "schema".add_column('billing', 'package_definitions', 'monthly_rate_transaction_type', 'string',      true, false, false, '', '1.0a123', null);
select "schema".add_column('billing', 'package_definitions', 'active',                        'boolean',    false, false, false, 'allows new accounts for this package', '1.0a123', null);
select "schema".add_column('billing', 'package_definitions', 'approved',                      'boolean',    false, false, false, 'once approved a definition may be used for packages, but may not be modified', '1.0a123', null);
