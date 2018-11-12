create or replace view accounting.salary_report as
select
  substring(bt."time"::text from 1 for 7) as "month",
  bt.expense_code as "type",
  ba."name",
  -sum(bt.amount) as total
from
  public.bank_transactions bt,
  public.business_administrators ba
where
  (
    bt.expense_code='salary'
    or bt.expense_code='dividend'
  ) and bt.administrator=ba.username
group by
  "month",
  bt.expense_code,
  "name"
;

grant select on accounting.salary_report to aoadmin;
