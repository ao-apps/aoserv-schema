/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2010, 2013, 2018, 2019, 2020  AO Industries, Inc.
 *     support@aoindustries.com
 *     7262 Bull Pen Cir
 *     Mobile, AL 36695
 *
 * This file is part of aoserv-schema.
 *
 * aoserv-schema is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * aoserv-schema is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

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
