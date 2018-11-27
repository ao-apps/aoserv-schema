-- Note: Refund transactions must have money with opposite the normal sign
create or replace view accounting.bank_transactions_verify as
select
  *
from
  accounting."BankTransaction"
where
  amount=0
  or (
    case when type='refund' then amount > 0 else amount < 0 end
    and "expenseCategory" is null
  ) or (
    case when type='refund' then amount < 0 else amount > 0 end
    and "expenseCategory" is not null
  ) or (
    (
      "type"='merchant_deposit'
      or "type"='merchant_fee'
    ) and processor is null
  ) or (
    "type"!='merchant_deposit'
    and "type"!='merchant_fee'
    and "expenseCategory"!='charge_back'
    and processor is not null
  ) or (
    "expenseCategory"='charge_back'
    and "type"!='refund'
    and "type"!='service_fee'
  )
order by
  "time"::date,
  id;

revoke all    on accounting.bank_transactions_verify from aoadmin;
grant  select on accounting.bank_transactions_verify to   aoadmin;
grant  select on accounting.bank_transactions_verify to   accounting;
