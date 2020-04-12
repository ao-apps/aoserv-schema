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
