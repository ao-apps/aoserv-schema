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

select "schema".add_column('billing', 'resources', 'name',                  'string', false,  true, true, 'the name of the specific resource', '1.0a100', null);
select "schema".add_column('billing', 'resources', 'unit',                  'string', false, false, true, '', '1.0a100', '1.0a122');
select "schema".add_column('billing', 'resources', 'singular_display_unit', 'string', false, false, true, 'the unit for display purposes (singular)', '1.0a123', '1.60');
select "schema".add_column('billing', 'resources', 'plural_display_unit',   'string', false, false, true, 'the unit for display purposes (plural)', '1.0a123', '1.60');
select "schema".add_column('billing', 'resources', 'per_unit',              'string', false, false, true, 'the unit for display as a "per"', '1.0a123', '1.60');
select "schema".add_column('billing', 'resources', 'description',           'string', false, false, true, 'a description of the resource', '1.0a100', '1.60');
