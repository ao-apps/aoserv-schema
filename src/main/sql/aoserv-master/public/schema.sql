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

-- Note: Drop from "postgres" superuser once to get ownership of the public schema
create schema if not exists public;

comment on schema public is 'The default schema used for things not otherwise classified into a specific schema';

grant  all    on schema public to aoadmin;
grant  usage  on schema public to aoserv_app;
grant  usage  on schema public to accounting;
grant  usage  on schema public to billing;
grant  usage  on schema public to distribution;
grant  usage  on schema public to infrastructure;
grant  usage  on schema public to management;
grant  usage  on schema public to monitoring;
grant  usage  on schema public to reseller;
