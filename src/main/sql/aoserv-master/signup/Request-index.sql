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

create index "Request_brand_fkey" on signup."Request" (
  brand
);
create index "Request_package_definition_fkey" on signup."Request" (
  package_definition
);
create index "Request_business_country_fkey" on signup."Request" (
  business_country
);
create index "Request_ba_country_fkey" on signup."Request" (
  ba_country
);
create index "Request_encryption_from_fkey" on signup."Request" (
  encryption_from
);
create index "Request_encryption_recipient_fkey" on signup."Request" (
  encryption_recipient
);
create index "Request_completed_by_fkey" on signup."Request" (
  completed_by
);
