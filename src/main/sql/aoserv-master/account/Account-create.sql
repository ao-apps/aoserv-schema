/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2009, 2010, 2012, 2018, 2019, 2020, 2021  AO Industries, Inc.
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

create table account."Account" (
  -- TODO: Rename to "name"
  accounting text
    primary key,
  contract_version text,
  created timestamp with time zone
    default now()
    not null,
  canceled timestamp with time zone,
  cancel_reason text,
  parent text,
  can_add_backup_server boolean
    not null,
  can_add_businesses boolean
    not null,
  can_see_prices boolean
    not null,
  disable_log integer,
  do_not_disable_reason text,
  auto_enable boolean
    not null,
  bill_parent boolean
    not null
);
grant all                    on account."Account" to aoadmin;
grant select, insert, update on account."Account" to aoserv_app;
grant select, update         on account."Account" to billing;
grant select                 on account."Account" to infrastructure;
grant select                 on account."Account" to management;
