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
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

create table email."CyrusImapdBind" (
  net_bind integer
    primary key,
  cyrus_imapd_server integer
    not null,
  servername "com.aoapps.net"."DomainName"
    check(
      servername is null
      or (
        servername::text = lower(servername::text) -- Must be all lowercase
        -- Now done by DomainName type: and servername != 'default'  -- Don't allow hostname of 'default' because they may conflict with Cyrus virtdomains defaultdomain.
      )
    ),
  certificate integer,
  allow_plaintext_auth boolean
);
grant all            on email."CyrusImapdBind" to aoadmin;
grant select, delete on email."CyrusImapdBind" to aoserv_app;
grant select, delete on email."CyrusImapdBind" to management;
