/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020  AO Industries, Inc.
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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

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
