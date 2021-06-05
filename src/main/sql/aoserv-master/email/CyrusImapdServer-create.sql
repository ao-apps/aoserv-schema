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
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

create table email."CyrusImapdServer" (
  ao_server integer primary key,
  sieve_net_bind integer unique,
  servername "com.aoapps.net"."DomainName"
    check(
      servername is null
      or (
        servername::text = lower(servername::text) -- Must be all lowercase
        -- Now done by DomainName type: and servername != 'default'  -- Don't allow hostname of 'default' because they may conflict with Cyrus virtdomains defaultdomain.
      )
    ),
  certificate integer not null,
  allow_plaintext_auth boolean not null
    -- See also CyrusImapdServer.DEFAULT_ALLOW_PLAINTEXT_AUTH
    default false,
  -- Delayed delete seems unreliable so far
  --
  -- It is difficult to delete folders and millions of lock files accumulating
  -- under /var/lib/imap/lock/u/DELETED/user/*/**/*.lock
  --
  -- Turned-off on all servers and removed defaults
  delete_duration real
    -- See also CyrusImapdServer.DEFAULT_DELETE_DURATION
    --default 3
    check (
      delete_duration is null
      or delete_duration > 0
    ),
  delete_duration_unit email."CyrusImapdServer.TimeUnit"
    -- See also CyrusImapdServer.DEFAULT_DELETE_DURATION_UNIT
    --default 'd'
    check (
      delete_duration_unit is null
      or delete_duration is not null
    ),
  expire_duration real not null
    -- See also CyrusImapdServer.DEFAULT_EXPIRE_DURATION
    default 3
    check (
      expire_duration > 0
    ),
  expire_duration_unit email."CyrusImapdServer.TimeUnit"
    -- See also CyrusImapdServer.DEFAULT_EXPIRE_DURATION_UNIT
    default 'd'
    check (
      expire_duration_unit is null
      or expire_duration is not null
    ),
  expunge_duration real
    -- See also CyrusImapdServer.DEFAULT_EXPUNGE_DURATION
    default 3
    check (
      expunge_duration is null
      or expunge_duration > 0
    ),
  expunge_duration_unit email."CyrusImapdServer.TimeUnit"
    -- See also CyrusImapdServer.DEFAULT_EXPUNGE_DURATION_UNIT
    default 'd'
    check (
      expunge_duration_unit is null
      or expunge_duration is not null
    )
);
grant all            on email."CyrusImapdServer" to aoadmin;
grant select         on email."CyrusImapdServer" to aoserv_app;
grant select, delete on email."CyrusImapdServer" to management;
