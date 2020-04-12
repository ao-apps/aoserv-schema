create or replace view accounting.bank_summary_monthly as
select
  substring(bt."time"::text from 1 for 7) as "month",
  bt."expenseCategory",
  sum(bt.amount)
from
  accounting."BankTransaction" bt,
  accounting."ExpenseCategory" ec
where
  bt."expenseCategory"=ec."name"
group by "month", bt."expenseCategory";

revoke all    on accounting.bank_summary_monthly from aoadmin;
grant  select on accounting.bank_summary_monthly to   aoadmin;
