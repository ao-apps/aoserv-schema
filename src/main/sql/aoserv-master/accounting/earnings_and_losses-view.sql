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

create or replace view accounting.earnings_and_losses as
select
  *
from (
  select
    months."month",
    total_earnings.total_earnings,
    payroll.payroll,
    hardware.hardware,
    other_expenses.other_expenses,
    total_losses.total_losses,
    corporate_profit.corporate_profit
  from
    (
      select distinct
        substring("time"::text from 1 for 7) as "month"
      from
        accounting."BankTransaction"
    ) as months
    left join (
      select
        substring("time"::text from 1 for 7) as "month",
        sum(amount) as total_earnings
      from
        accounting."BankTransaction"
      where
        amount > 0
      group by
        "month"
    ) as total_earnings on months."month"=total_earnings."month"
    left join (
      select
        substring("time"::text from 1 for 7) as "month",
        -sum(amount) as payroll
      from
        accounting."BankTransaction"
      where
        amount < 0
        and "expenseCategory" in ('dividend', 'rent', 'salary', 'treasury_stock', 'utilities')
      group by
        "month"
    ) as payroll on months."month"=payroll."month"
    left join (
      select
        substring("time"::text from 1 for 7) as "month",
        -sum(amount) as hardware
      from
        accounting."BankTransaction"
      where
        amount < 0
        and "expenseCategory" in ('hardware', 'supplies_perm')
      group by
        "month"
    ) as hardware on months."month"=hardware."month"
    left join (
      select
        substring("time"::text from 1 for 7) as "month",
        -sum(amount) as other_expenses
      from
        accounting."BankTransaction"
      where
        amount < 0
        and "expenseCategory" not in ('hardware', 'supplies_perm', 'dividend', 'rent', 'salary', 'treasury_stock', 'utilities')
      group by
        "month"
    ) as other_expenses on months."month"=other_expenses."month"
    left join (
      select
        substring("time"::text from 1 for 7) as "month",
        -sum(amount) as total_losses
      from
        accounting."BankTransaction"
      where
        amount < 0
      group by
        "month"
    ) as total_losses on months."month"=total_losses."month"
    left join (
      select
        substring("time"::text from 1 for 7) as "month",
    sum(amount) as corporate_profit
      from
        accounting."BankTransaction"
      group by
        "month"
    ) as corporate_profit on months."month"=corporate_profit."month"
  order by
    months."month"
) as monthly
union select
  'Total:',
  (
    select
      sum(amount) as total_earnings
    from
      accounting."BankTransaction"
    where
      amount > 0
  ),
  (
    select
      -sum(amount) as payroll
    from
      accounting."BankTransaction"
    where
      amount < 0
      and "expenseCategory" in ('dividend', 'rent', 'salary', 'treasury_stock', 'utilities')
  ),
  (
    select
      -sum(amount) as hardware
    from
      accounting."BankTransaction"
    where
      amount < 0
      and "expenseCategory" in ('hardware', 'supplies_perm')
  ),
  (
    select
      -sum(amount) as other_expenses
    from
      accounting."BankTransaction"
    where
      amount < 0
      and "expenseCategory" not in ('hardware', 'supplies_perm', 'dividend', 'rent', 'salary', 'treasury_stock', 'utilities')
  ),
  (
    select
      -sum(amount) as total_losses
    from
      accounting."BankTransaction"
    where
      amount < 0
  ),
  (
    select
      sum(amount) as corporate_profit
    from
      accounting."BankTransaction"
  );

revoke all    on accounting.earnings_and_losses from aoadmin;
grant  select on accounting.earnings_and_losses to   aoadmin;
