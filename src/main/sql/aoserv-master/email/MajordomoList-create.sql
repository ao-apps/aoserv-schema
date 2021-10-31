/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2018, 2020  AO Industries, Inc.
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

create table email."MajordomoList" (
  email_list integer
    primary key,
  majordomo_server integer
    not null,
  "name" text
    not null,
  listname_pipe_add integer
    not null
    unique,
  listname_list_add integer
    not null
    unique,
  owner_listname_add integer
    not null
    unique,
  listname_owner_add integer
    not null
    unique,
  listname_approval_add integer
    not null
    unique,
  listname_request_pipe_add integer
    not null
    unique,
  unique (majordomo_server, "name")
);
grant all                    on email."MajordomoList" to aoadmin;
grant select, insert, delete on email."MajordomoList" to aoserv_app;
