/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020  AO Industries, Inc.
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

create index "Transaction_accounting_fkey" on billing."Transaction" (
  accounting
);
create index "Transaction_source_accounting_fkey" on billing."Transaction" (
  source_accounting
);
create index "Transaction_username_fkey" on billing."Transaction" (
  username
);
create index "Transaction_type_fkey" on billing."Transaction" (
  "type"
);
create index "Transaction_rate.currency_fkey" on billing."Transaction" (
  "rate.currency"
);
create index "Transaction_payment_type_fkey" on billing."Transaction" (
  payment_type
);
create index "Transaction_processor_fkey" on billing."Transaction" (
  processor
);
create index "Transaction_credit_card_transaction_fkey" on billing."Transaction" (
  credit_card_transaction
);
