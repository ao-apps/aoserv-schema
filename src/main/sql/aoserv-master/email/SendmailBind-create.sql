/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2020, 2021  AO Industries, Inc.
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

create table email."SendmailBind" (
  net_bind integer
    primary key,
  sendmail_server integer
    not null,
  "name" text
    check (
      -- name may not contain a space for consistency with pattern matching in fail2ban-filter-sendmail-disconnect
      "name" is null
      or "name" not like '% %'
    )
);
grant all                    on email."SendmailBind" to aoadmin;
grant select, delete         on email."SendmailBind" to aoserv_app;
grant select, insert, delete on email."SendmailBind" to management;
