/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2019, 2020  AO Industries, Inc.
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

select "schema".add_column('billing', 'Currency', 'currencyCode',             'string', false, true,  true, 'the ISO 4217 currency code of this currency',           '1.83.0', null);
select "schema".add_column('billing', 'Currency', 'fractionDigits',           'short',  false, false, true, 'the number of fraction digits used with this currency', '1.83.0', null);
select "schema".add_column('billing', 'Currency', 'autoEnableMinimumPayment', 'money',  false, false, true, 'the minimum payment for auto-enabling accounts',        '1.83.0', null);
