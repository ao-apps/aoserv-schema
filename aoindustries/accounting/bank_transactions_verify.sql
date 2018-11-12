-- Note: Refund transactions must have money with opposite the normal sign
create or replace view accounting.bank_transactions_verify as
select
  *
from
  public.bank_transactions
where
  amount=0
  or (
    case when type='refund' then amount > 0 else amount < 0 end
    and expense_code is null
  ) or (
    case when type='refund' then amount < 0 else amount > 0 end
    and expense_code is not null
  ) or (
    (
      "type"='merchant_deposit'
      or "type"='merchant_fee'
    ) and processor is null
  ) or (
    "type"!='merchant_deposit'
    and "type"!='merchant_fee'
    and expense_code!='charge_back'
    and processor is not null
  ) or (
    expense_code='charge_back'
    and "type"!='refund'
    and "type"!='service_fee'
  )
order by
  "time"::date,
  transid;

revoke all    on accounting.bank_transactions_verify from aoadmin;
grant  select on accounting.bank_transactions_verify to   aoadmin;
