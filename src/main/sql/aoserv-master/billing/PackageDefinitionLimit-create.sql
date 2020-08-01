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

create sequence         billing."PackageDefinitionLimit_id_seq" cycle;
grant all            on billing."PackageDefinitionLimit_id_seq" to aoadmin;
grant select, update on billing."PackageDefinitionLimit_id_seq" to aoserv_app;

create table billing."PackageDefinitionLimit" (
  id integer
    default nextval('billing."PackageDefinitionLimit_id_seq"')
    primary key,
  package_definition integer not null,
  resource text not null,
  soft_limit integer check (soft_limit is null or soft_limit >= 0),
  hard_limit integer check (hard_limit is null or hard_limit >= 0),
  "additionalRate.currency" char(3),
  "additionalRate.value" numeric check ("additionalRate.value" is null or "additionalRate.value" > 0),
  check (
    ("additionalRate.currency" is null) = ("additionalRate.value" is null)
  ),
  additional_transaction_type text,
  check (
    -- When hard_limit is provided, soft_limit must also be set
    (hard_limit is null or soft_limit is not null)
    -- soft_limit must always be <= hard_limit, when both exist
    and (soft_limit is null or hard_limit is null or soft_limit <= hard_limit)
    -- Additional rate and type only allowed when soft_limit is set and different than hard limit
    and (
      case when
        soft_limit is not null and (hard_limit is null or soft_limit != hard_limit)
      then
        "additionalRate.value" is not null
        and additional_transaction_type is not null
      else
        "additionalRate.value" is null
        and additional_transaction_type is null
      end
    )
  ),
  unique(package_definition, resource)
);

grant all                            on billing."PackageDefinitionLimit" to aoadmin;
grant select, insert, update, delete on billing."PackageDefinitionLimit" to aoserv_app;
grant select                         on billing."PackageDefinitionLimit" to billing;
