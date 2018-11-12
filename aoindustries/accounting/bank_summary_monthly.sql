create or replace view accounting.bank_summary_monthly as
select
  substring(bt."time"::text from 1 for 7) as "month",
  bt.expense_code,
  sum(bt.amount)
from
  public.bank_transactions bt,
  public.expense_categories ec
where
  bt.expense_code=ec.expense_code
group by "month", bt.expense_code;

revoke all    on accounting.bank_summary_monthly from aoadmin;
grant  select on accounting.bank_summary_monthly to   aoadmin;
