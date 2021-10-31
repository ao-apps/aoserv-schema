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

create unique index "CreditCard_uni" on payment."CreditCard" (
  processor_id,
  provider_unique_id
);
create index "CreditCard_accounting_fkey" on payment."CreditCard" (
  accounting
);
create index "CreditCard_country_code_fkey" on payment."CreditCard" (
  country_code
);
create index "CreditCard_created_by_fkey" on payment."CreditCard" (
  created_by
);
create index "CreditCard_encryption_card_number_from_fkey" on payment."CreditCard" (
  encryption_card_number_from
);
create index "CreditCard_encryption_card_number_recipient_fkey" on payment."CreditCard" (
  encryption_card_number_recipient
);
