/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2009, 2013, 2018, 2019, 2020  AO Industries, Inc.
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

alter table billing."PackageDefinitionLimit"
  add constraint package_definition_fkey
  foreign key (package_definition)
  references billing."PackageDefinition" (id)
  on delete restrict
  on update cascade
;
alter table billing."PackageDefinitionLimit"
  add constraint resource_fkey
  foreign key (resource)
  references billing."Resource" ("name")
  on delete restrict
  on update cascade
;
alter table billing."PackageDefinitionLimit"
  add constraint "additionalRate.currency_fkey"
  foreign key ("additionalRate.currency")
  references billing."Currency" ("currencyCode")
  on delete restrict
  on update cascade
;
alter table billing."PackageDefinitionLimit"
  add constraint additional_transaction_type_fkey
  foreign key (additional_transaction_type)
  references billing."TransactionType" ("name")
  on delete restrict
  on update cascade
;
