/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2018, 2020  AO Industries, Inc.
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

create table email."MajordomoServer" (
  "domain" integer
    primary key,
  linux_server_account integer
    not null,
  linux_server_group integer
    not null,
  version text
    not null,
  majordomo_pipe_address integer
    not null,
  owner_majordomo_add integer
    not null,
  majordomo_owner_add integer
    not null
);
grant all                    on email."MajordomoServer" to aoadmin;
grant select, insert, delete on email."MajordomoServer" to aoserv_app;
