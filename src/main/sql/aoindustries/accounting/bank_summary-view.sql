create or replace view accounting.bank_summary as
select
  bt."expenseCategory",
  substring(bt."time"::text from 1 for 7) as "month",
  sum(bt.amount)
from
  accounting."BankTransaction" bt,
  accounting."ExpenseCategory" ec
where
  bt."expenseCategory"=ec."name"
group by bt."expenseCategory", "month";

revoke all    on accounting.bank_summary from aoadmin;
grant  select on accounting.bank_summary to   aoadmin;
grant  select on accounting.bank_summary to   accounting;
