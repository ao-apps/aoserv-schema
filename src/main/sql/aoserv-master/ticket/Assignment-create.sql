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

create sequence         ticket."Assignment_id_seq" cycle;
grant all            on ticket."Assignment_id_seq" to aoadmin;
grant select, update on ticket."Assignment_id_seq" to aoserv_app;

create table ticket."Assignment" (
  id integer default nextval('ticket."Assignment_id_seq"') primary key,
  ticket integer not null,
  reseller text not null,
  administrator text not null -- This MUST be a business_administrator in the same accounting as reseller or the ticket may be lost - TODO: how to enforce in PostgreSQL? (trigger)
);
grant all            on ticket."Assignment" to aoadmin;
grant select, insert on ticket."Assignment" to aoserv_app;
