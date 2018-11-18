create or replace view accounting.salary_report as
select
  substring(bt."time"::text from 1 for 7) as "month",
  bt."expenseCategory" as "type",
  ba."name",
  -sum(bt.amount) as total
from
  accounting."BankTransaction" bt,
  public.business_administrators ba
where
  (
    bt."expenseCategory"='salary'
    or bt."expenseCategory"='dividend'
  ) and bt.administrator=ba.username
group by
  "month",
  bt."expenseCategory",
  "name"
;

revoke all    on accounting.salary_report from aoadmin;
grant  select on accounting.salary_report to   aoadmin;
