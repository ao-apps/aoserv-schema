create or replace view accounting.expense_trends as
select
  expense_code,
  "year",
  "sum",
  repeat('*', -"sum"::integer/1000)
from
  (
    select
      expense_code,
      substring("month" from 1 for 4) as "year",
      sum("sum")
    from
      accounting.bank_summary
    group by
      expense_code,
      "year"
  ) as years
order by
  expense_code,
  "year";

revoke all    on accounting.expense_trends from aoadmin;
grant  select on accounting.expense_trends to   aoadmin;
