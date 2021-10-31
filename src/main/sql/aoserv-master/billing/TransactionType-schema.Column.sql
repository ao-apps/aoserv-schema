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

select "schema".add_column('billing', 'transaction_types', 'name',        'string',  false,  true, true, 'the name of the type', '1.0a123', null);
select "schema".add_column('billing', 'transaction_types', 'display',     'string',  false, false, true, 'the short display value', '1.0a123', '1.60');
select "schema".add_column('billing', 'transaction_types', 'description', 'string',  false, false, true, 'a description of the type of payment', '1.0a123', '1.60');
select "schema".add_column('billing', 'transaction_types', 'unit',        'string',  false, false, true, 'the unit of the transaction type', '1.0a123', '1.60');
select "schema".add_column('billing', 'transaction_types', 'is_credit',   'boolean', false, false, true, 'indicates that this type of transaction represents payment or credit', '1.0a123', null);
