/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2010, 2012, 2017, 2018, 2020, 2021  AO Industries, Inc.
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

create sequence         linux."UserServer_id_seq" cycle;
grant all            on linux."UserServer_id_seq" to aoadmin;
grant select, update on linux."UserServer_id_seq" to aoserv_app;
grant select, update on linux."UserServer_id_seq" to management; -- For "root" only

create table linux."UserServer" (
  id integer
    default nextval('linux."UserServer_id_seq"')
    primary key,
  username text
    not null,
  ao_server integer
    not null,
  uid linux."LinuxId"
    not null,
  -- TODO: "com.aoindustries.aoserv.types"."UnixPath"
  home "com.aoindustries.net"."Path"
    not null,
  autoresponder_from integer,
  autoresponder_subject text,
  autoresponder_path text,
  is_autoresponder_enabled boolean
    not null
    default false,
  disable_log integer,
  predisable_password text,
  created timestamp with time zone
    not null
    default now(),
  use_inbox boolean
    not null
    default true,
  trash_email_retention integer,
  junk_email_retention integer,
  sa_integration_mode text
    not null
    default 'none',
  sa_required_score real
    not null
    default 3,
  sa_discard_score integer
    default 20
    check (sa_discard_score is null or sa_discard_score>0),
  sudo text,
  unique (username, ao_server)
);
grant all                            on linux."UserServer" to aoadmin;
grant select, insert, update, delete on linux."UserServer" to aoserv_app;
grant select, insert, update, delete on linux."UserServer" to management; -- TODO: "INSERT" or "root" only - trigger/view to enforce?
