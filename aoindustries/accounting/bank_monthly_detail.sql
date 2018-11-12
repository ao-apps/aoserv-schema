create or replace view accounting.bank_monthly_detail as
select
  "time"::date as "date",
  administrator,
  "type",
  expense_code,
  description,
  amount
from
  public.bank_transactions
order by
  "time";

revoke all    on accounting.bank_monthly_detail from aoadmin;
grant  select on accounting.bank_monthly_detail to   aoadmin;
