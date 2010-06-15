/**********************************************************************
 *
 * The account_balances view provides the account balance for each
 * accounting code found in businesses.
 *
 * accounting  the accounting code
 * balance     the account balance, negative means credit
 *
 *********************************************************************/
create view
  account_balances
as select
  bu.accounting as accounting,
  (select sum(cast(t.quantity*t.rate as decimal(9,2))) from transactions t where t.accounting=bu.accounting and t.status!='N' and t.currency='USD') as "USD",
  (select sum(cast(t.quantity*t.rate as decimal(9,2))) from transactions t where t.accounting=bu.accounting and t.status!='N' and t.currency='EUR') as "EUR",
  (select sum(cast(t.quantity*t.rate as decimal(11,0))) from transactions t where t.accounting=bu.accounting and t.status!='N' and t.currency='JPY') as "JPY"
from
  businesses bu
;
grant select on account_balances to aoadmin;
grant select on account_balances to aoserv_app;
