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

create unique index "PackageDefinition_uni" on billing."PackageDefinition" (
  accounting,
  category,
  "name",
  version
);
create index "PackageDefinition_category_fkey" on billing."PackageDefinition" (
  category
);
create index "PackageDefinition_setupFee.currency_fkey" on billing."PackageDefinition" (
  "setupFee.currency"
);
create index "PackageDefinition_setup_fee_transaction_type_fkey" on billing."PackageDefinition" (
  setup_fee_transaction_type
);
create index "PackageDefinition_monthlyRate.currency_fkey" on billing."PackageDefinition" (
  "monthlyRate.currency"
);
create index "PackageDefinition_monthly_rate_transaction_type_fkey" on billing."PackageDefinition" (
  monthly_rate_transaction_type
);
