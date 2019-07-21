/**********************************************************************
 *
 * The account_balances view provides the account balance for each
 * accounting code found in account.Account, one balance per currency.
 *
 * accounting  the accounting code
 * currency    the currency code
 * balance     the account balance, negative means credit
 *
 *********************************************************************/
create view billing.account_balances as
select
  t.accounting as accounting,
  t."rate.currency" as currency,
  sum(
    round(
      t.quantity * t."rate.value",
      c."fractionDigits"
    )
  ) as balance
from
  billing."Transaction" t
  inner join billing."Currency" c on t."rate.currency" = c."currencyCode"
where
  t.payment_confirmed != 'N'
group by t.accounting, t."rate.currency";

revoke all    on billing.account_balances from aoadmin;
grant  select on billing.account_balances to   aoadmin;
grant  select on billing.account_balances to   aoserv_app;
