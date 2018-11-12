create or replace view accounting.earnings_and_losses as
select
  *
from (
  select
    months."month",
    total_earnings.total_earnings,
    payroll.payroll,
    hardware.hardware,
    other_expenses.other_expenses,
    total_losses.total_losses,
    corporate_profit.corporate_profit
  from
    (
      select distinct
        substring("time"::text from 1 for 7) as "month"
      from
        public.bank_transactions
    ) as months
    left outer join (
      select
        substring("time"::text from 1 for 7) as "month",
        sum(amount) as total_earnings
      from
        public.bank_transactions
      where
        amount > 0
      group by
        "month"
    ) as total_earnings on months."month"=total_earnings."month"
    left outer join (
      select
        substring("time"::text from 1 for 7) as "month",
        -sum(amount) as payroll
      from
        public.bank_transactions
      where
        amount < 0
        and expense_code in ('dividend', 'rent', 'salary', 'treasury_stock', 'utilities')
      group by
        "month"
    ) as payroll on months."month"=payroll."month"
    left outer join (
      select
        substring("time"::text from 1 for 7) as "month",
        -sum(amount) as hardware
      from
        public.bank_transactions
      where
        amount < 0
        and expense_code in ('hardware', 'supplies_perm')
      group by
        "month"
    ) as hardware on months."month"=hardware."month"
    left outer join (
      select
        substring("time"::text from 1 for 7) as "month",
        -sum(amount) as other_expenses
      from
        public.bank_transactions
      where
        amount < 0
        and expense_code not in ('hardware', 'supplies_perm', 'dividend', 'rent', 'salary', 'treasury_stock', 'utilities')
      group by
        "month"
    ) as other_expenses on months."month"=other_expenses."month"
    left outer join (
      select
        substring("time"::text from 1 for 7) as "month",
        -sum(amount) as total_losses
      from
        public.bank_transactions
      where
        amount < 0
      group by
        "month"
    ) as total_losses on months."month"=total_losses."month"
    left outer join (
      select
        substring("time"::text from 1 for 7) as "month",
    sum(amount) as corporate_profit
      from
        public.bank_transactions
      group by
        "month"
    ) as corporate_profit on months."month"=corporate_profit."month"
  order by
    months."month"
) as monthly
union select
  'Total:',
  (
    select
      sum(amount) as total_earnings
    from
      public.bank_transactions
    where
      amount > 0
  ),
  (
    select
      -sum(amount) as payroll
    from
      public.bank_transactions
    where
      amount < 0
      and expense_code in ('dividend', 'rent', 'salary', 'treasury_stock', 'utilities')
  ),
  (
    select
      -sum(amount) as hardware
    from
      public.bank_transactions
    where
      amount < 0
      and expense_code in ('hardware', 'supplies_perm')
  ),
  (
    select
      -sum(amount) as other_expenses
    from
      public.bank_transactions
    where
      amount < 0
      and expense_code not in ('hardware', 'supplies_perm', 'dividend', 'rent', 'salary', 'treasury_stock', 'utilities')
  ),
  (
    select
      -sum(amount) as total_losses
    from
      public.bank_transactions
    where
      amount < 0
  ),
  (
    select
      sum(amount) as corporate_profit
    from
      public.bank_transactions
  );

grant all on accounting.earnings_and_losses to aoadmin;
