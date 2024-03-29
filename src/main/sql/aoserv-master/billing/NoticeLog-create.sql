/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2018, 2019, 2020, 2021  AO Industries, Inc.
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

create sequence         billing."NoticeLog_id_seq" cycle;
grant all            on billing."NoticeLog_id_seq" to aoadmin;
grant select, update on billing."NoticeLog_id_seq" to aoserv_app;

create table billing."NoticeLog" (
  id integer
    default nextval('billing."NoticeLog_id_seq"')
    primary key,
  create_time timestamp with time zone
    default now()
    not null,
  accounting text
    not null,
  billing_contact text
    not null,
  billing_email "com.aoapps.net"."Email"
    not null,
  notice_type text
    not null,
  transid integer
);

grant all            on billing."NoticeLog" to aoadmin;
grant select, insert on billing."NoticeLog" to aoserv_app;
