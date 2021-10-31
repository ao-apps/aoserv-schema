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

create or replace view accounting.expense_trends as
select
  "expenseCategory",
  "year",
  "sum",
  repeat('*', -"sum"::integer/1000)
from
  (
    select
      "expenseCategory",
      substring("month" from 1 for 4) as "year",
      sum("sum")
    from
      accounting.bank_summary
    group by
      "expenseCategory",
      "year"
  ) as years
order by
  "expenseCategory",
  "year";

revoke all    on accounting.expense_trends from aoadmin;
grant  select on accounting.expense_trends to   aoadmin;
