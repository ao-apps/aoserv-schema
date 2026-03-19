/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020, 2026  AO Industries, Inc.
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
  'selects rows and columns from a table.',
  '{<b>*</b>|<i>expression</i>}[, ...] <b>FROM</b> <i>table_name</i> [<b>ORDER BY</b> <i>expression</i> [{<b>ASC</b>|<b>DESC</b>}] [, ...]]

where <i>expression</i> can be one of:
  <b>count(*)</b>               Counts the number of rows (aggregate function).
  <i>column</i>                 The column value.
  <i>column</i>.<i>join</i>          Follows foreign key relationship, selects the joined column from
                           the foreign table.  Any number of joins may be performed.
  <i>column</i>::<i>type</i>         Casts the column value to the given type.
                           Only a single cast is supported.
  <i>column</i>.<i>join</i>::<i>type</i>  One or more joins may be followed by a single cast.

Column names with dots may be double-quoted to avoid being interpreted as a join:
  For example:
    SELECT "creditCard.expirationMonth" FROM credit_card_transactions
  Within AOSH, will need to escape for the shell:
    SELECT \"creditCard.expirationMonth\" FROM credit_card_transactions

Aggregate functions:
  May not combine aggregate functions with non-aggregate functions.
  May not use <b>ORDER BY</b> with aggregate functions.',
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
