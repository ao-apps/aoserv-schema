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

create sequence         email."SendmailServer_id_seq" cycle;
grant all            on email."SendmailServer_id_seq" to aoadmin;
grant select         on email."SendmailServer_id_seq" to aoserv_app;
grant select, update on email."SendmailServer_id_seq" to management;

create table email."SendmailServer" (
  id integer
    default nextval('email."SendmailServer_id_seq"')
    primary key,
  ao_server integer
    not null,
  "name" text
    check ("name" is null or length("name") > 0),
  package integer
    not null,
  hostname "com.aoapps.net"."DomainName"
    check(
      hostname is null
      or (
        hostname::text = lower(hostname::text) -- Must be all lowercase
        -- Now done by DomainName type: and hostname != 'default'  -- Don't allow hostname of 'default' because they may conflict with Cyrus virtdomains defaultdomain.
      )
    ),
  server_certificate integer not null,
  client_certificate integer not null,
  allow_plaintext_auth boolean not null
    -- See also SendmailServer.DEFAULT_ALLOW_PLAINTEXT_AUTH
    default false,
  max_queue_children integer
    -- See also SendmailServer.DEFAULT_MAX_QUEUE_CHILDREN
    default 100
    check (
      max_queue_children is null
      or max_queue_children > 0
    ),
  nice_queue_run integer
    -- See also SendmailServer.DEFAULT_NICE_QUEUE_RUN
    default 10
    check (
      nice_queue_run is null
      or nice_queue_run > 0
    ),
  delay_la integer
    -- See also SendmailServer.DEFAULT_DELAY_LA
    default 40
    check (
      delay_la is null
      or delay_la > 0
    ),
  queue_la integer
    -- See also SendmailServer.DEFAULT_QUEUE_LA
    default 50
    check (
      queue_la is null
      or queue_la > delay_la
    ),
  refuse_la integer
    -- See also SendmailServer.DEFAULT_REFUSE_LA
    default 80
    check (
      refuse_la is null
      or refuse_la > queue_la
    ),
  max_daemon_children integer
    -- See also SendmailServer.DEFAULT_MAX_DAEMON_CHILDREN
    default 1000
    check (
      max_daemon_children is null
      or max_daemon_children > 0
    ),
  bad_rcpt_throttle integer
    -- See also SendmailServer.DEFAULT_BAD_RCPT_THROTTLE
    default 10
    check (
      bad_rcpt_throttle is null
      or bad_rcpt_throttle > 0
    ),
  connection_rate_throttle integer
    -- See also SendmailServer.DEFAULT_CONNECTION_RATE_THROTTLE
    default 100
    check (
      connection_rate_throttle is null
      or connection_rate_throttle > 0
    ),
  max_message_size integer
    -- See also SendmailServer.DEFAULT_MAX_MESSAGE_SIZE
    default 100000000
    check (
      max_message_size is null
      or max_message_size > 0
    ),
  min_free_blocks integer
    -- See also SendmailServer.DEFAULT_MIN_FREE_BLOCKS
    default 65536
    check (
      min_free_blocks is null
      or min_free_blocks > 0
    ),
  "clientAddrInet"  integer,
  "clientAddrInet6" integer
);
grant all                    on email."SendmailServer" to aoadmin;
grant select                 on email."SendmailServer" to aoserv_app;
grant select, insert, delete on email."SendmailServer" to management;
