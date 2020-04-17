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

select aosh.add_command(
  'desc',
  'schema',
  'schema_tables',
  'describes the structure of a table',
  '<i>table_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'describe',
  'schema',
  'schema_tables',
  'describes the structure of a table',
  '<i>table_name</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'select',
  'schema',
  'schema_tables',
  'selects rows and columns from a table',
  '{<b>*</b>|<i>column[::type][.join][, column[::type][.join]]</i>|<b>count(*)</b>} <b>from</b> <i>table_name</i> [order by <i>column[::type][.join][, column[::type][.join]]]</i>',
  '1.0a100',
  null
);
select aosh.add_command(
  'show',
  'schema',
  'schema_tables',
  'shows information about tables',
  '<b>tables</b>',
  '1.0a100',
  null
);
