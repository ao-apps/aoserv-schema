create view bank_summary as
select
  bt.expense_code,
  substring(bt.time::text from 1 for 7) as month,
  sum(bt.amount)
from
  bank_transactions bt,
  expense_categories ec
where
  bt.expense_code=ec.expense_code
group by bt.expense_code, month;
grant all on bank_summary to aoadmin;

create view bank_summary_monthly as
select
  substring(bt.time::text from 1 for 7) as month,
  bt.expense_code,
  sum(bt.amount)
from
  bank_transactions bt,
  expense_categories ec
where
  bt.expense_code=ec.expense_code
group by month, bt.expense_code;
grant all on bank_summary_monthly to aoadmin;

create view earnings_and_losses as
select
*
from (
select
months.month,
total_earnings.total_earnings,
payroll.payroll,
hardware.hardware,
other_expenses.other_expenses,
total_losses.total_losses,
corporate_profit.corporate_profit
from
(
  select distinct
    substring(time::text from 1 for 7) as month
  from
    bank_transactions
) as months
left outer join (
  select
    substring(time::text from 1 for 7) as month,
    sum(amount) as total_earnings
  from
    bank_transactions
  where
    amount>0
  group by
    month
) as total_earnings on months.month=total_earnings.month
left outer join (
  select
    substring(time::text from 1 for 7) as month,
    -sum(amount) as payroll
  from
    bank_transactions
  where
    amount<0
    and expense_code in ('dividend', 'rent', 'salary', 'treasury_stock', 'utilities')
  group by
    month
) as payroll on months.month=payroll.month
left outer join (
  select
    substring(time::text from 1 for 7) as month,
    -sum(amount) as hardware
  from
    bank_transactions
  where
    amount<0
    and expense_code in ('hardware', 'supplies_perm')
  group by
    month
) as hardware on months.month=hardware.month
left outer join (
  select
    substring(time::text from 1 for 7) as month,
    -sum(amount) as other_expenses
  from
    bank_transactions
  where
    amount<0
    and expense_code not in ('hardware', 'supplies_perm', 'dividend', 'rent', 'salary', 'treasury_stock', 'utilities')
  group by
    month
) as other_expenses on months.month=other_expenses.month
left outer join (
  select
    substring(time::text from 1 for 7) as month,
    -sum(amount) as total_losses
  from
    bank_transactions
  where
    amount<0
  group by
    month
) as total_losses on months.month=total_losses.month
left outer join (
  select
    substring(time::text from 1 for 7) as month,
    sum(amount) as corporate_profit
  from
    bank_transactions
  group by
    month
) as corporate_profit on months.month=corporate_profit.month
order by
months.month
) as monthly
union select
'Total:',
(
select
  sum(amount) as total_earnings
from
  bank_transactions
where
  amount>0
),
(
select
  -sum(amount) as payroll
from
  bank_transactions
where
  amount<0
  and expense_code in ('dividend', 'rent', 'salary', 'treasury_stock', 'utilities')
),
(
select
  -sum(amount) as hardware
from
  bank_transactions
where
  amount<0
  and expense_code in ('hardware', 'supplies_perm')
),
(
select
  -sum(amount) as other_expenses
from
  bank_transactions
where
  amount<0
  and expense_code not in ('hardware', 'supplies_perm', 'dividend', 'rent', 'salary', 'treasury_stock', 'utilities')
),
(
select
  -sum(amount) as total_losses
from
  bank_transactions
where
  amount<0
),
(
select
  sum(amount) as corporate_profit
from
  bank_transactions
)
;
grant all on earnings_and_losses to aoadmin;

create view bank_monthly_detail as
select
  time::date as date,
  administrator,
  type,
  expense_code,
  description,
  amount
from
  bank_transactions
order by
  time
;
grant all on bank_monthly_detail to aoadmin;

create view salary_report as
select
  substring(bt.time::text from 1 for 7) as month,
  bt.expense_code as type,
  ba.name,
  -sum(bt.amount) as total
from
  bank_transactions bt,
  business_administrators ba
where
  (
    bt.expense_code='salary'
    or bt.expense_code='dividend'
  ) and bt.administrator=ba.username
group by
  month,
  bt.expense_code,
  name
;
grant all on salary_report to aoadmin;

create view bank_transactions_verify as
select
  *
from
  bank_transactions
where
  amount=0
  or (
    amount<0
    and expense_code is null
  ) or (
    amount>0
    and expense_code is not null
  ) or (
    (
      type='merchant_deposit'
      or type='merchant_fee'
    ) and processor is null
  ) or (
    type!='merchant_deposit'
    and type!='merchant_fee'
    and expense_code!='charge_back'
    and processor is not null
  ) or (
    expense_code='charge_back'
    and type!='refund'
    and type!='service_fee'
  )
order by
  time::date,
  transid
;
grant all on bank_transactions_verify to aoadmin;
