/**********************************************************************
 *
 * The account_balances view provides the account balance for each
 * accounting code found in account.Account.
 *
 * accounting  the accounting code
 * balance     the account balance, negative means credit
 *
 *********************************************************************/
create view billing.account_balances as
select
  t.accounting as accounting,
  sum(cast(t.quantity*t.rate as decimal(9,2))) as balance
  from
    billing."Transaction" t
  where
    t.payment_confirmed!='N'
  group by t.accounting
;

revoke all    on billing.account_balances from aoadmin;
grant  select on billing.account_balances to   aoadmin;
grant  select on billing.account_balances to   aoserv_app;
