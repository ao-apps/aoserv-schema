create or replace view accounting.bank_summary as
select
  bt.expense_code,
  substring(bt."time"::text from 1 for 7) as "month",
  sum(bt.amount)
from
  public.bank_transactions bt,
  public.expense_categories ec
where
  bt.expense_code=ec.expense_code
group by bt.expense_code, "month";

revoke all on accounting.bank_summary from aoadmin;
grant select on accounting.bank_summary to aoadmin;
