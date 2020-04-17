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

select "schema".add_column('billing', 'package_definition_limits', 'pkey',                        'pkey',     false,  true, false, 'the unique identifier for this limit', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'package_definition',          'fkey',     false, false, false, 'the pkey of the package definition', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'resource',                    'string',   false, false, false, 'the resource name', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'soft_limit',                  'int',       true, false, false, 'the number that may be used for additional charges are added, NULL means unlimited', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'hard_limit',                  'int',       true, false, false, 'the maximum number that may be allocated, NULL means unlimited', '1.0a123', null);
select "schema".add_column('billing', 'package_definition_limits', 'additional_rate',             'decimal_2', true, false, false, 'the monthly rate for those past the soft_limit', '1.0a123', '1.82.1');
select "schema".add_column('billing', 'package_definition_limits', 'additionalRate',              'money',     true, false, false, 'the monthly rate for those past the soft_limit', '1.83.0', null);
select "schema".add_column('billing', 'package_definition_limits', 'additional_transaction_type', 'string',    true, false, false, '', '1.0a123', null);
