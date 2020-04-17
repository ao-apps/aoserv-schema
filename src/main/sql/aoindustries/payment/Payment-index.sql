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
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

create index "Payment_accounting_fkey" on payment."Payment" (
  accounting
);
create index "Payment_currency_fkey" on payment."Payment" (
  currency
);
create index "Payment_shipping_country_code_fkey" on payment."Payment" (
  shipping_country_code
);
create index "Payment_credit_card_created_by_fkey" on payment."Payment" (
  credit_card_created_by
);
create index "Payment_credit_card_accounting_fkey" on payment."Payment" (
  credit_card_accounting
);
create index "Payment_credit_card_country_code_fkey" on payment."Payment" (
  credit_card_country_code
);
create index "Payment_authorization_username_fkey" on payment."Payment" (
  authorization_username
);
create index "Payment_capture_username_fkey" on payment."Payment" (
  capture_username
);
create index "Payment_void_username_fkey" on payment."Payment" (
  void_username
);
