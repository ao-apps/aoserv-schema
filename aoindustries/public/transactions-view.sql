/**********************************************************************
 *
 * The account_balances view provides the account balance for each
 * accounting code found in businesses.
 *
 * accounting  the accounting code
 * balance     the account balance, negative means credit
 *
 *********************************************************************/
create view account_balances as
select
  t.accounting as accounting,
  sum(cast(t.quantity*t.rate as decimal(9,2))) as balance
  from
    transactions t
  where
    t.payment_confirmed!='N'
  group by t.accounting
;

revoke all on account_balances from aoadmin;
grant select on account_balances to aoadmin;
grant select on account_balances to aoserv_app;
