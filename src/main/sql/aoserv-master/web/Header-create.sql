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

create sequence web."Header_id_seq" cycle;
grant all    on web."Header_id_seq" to aoadmin;
grant select on web."Header_id_seq" to aoserv_app;
grant select, update on web."Header_id_seq" to management;

-- See https://httpd.apache.org/docs/2.4/mod/mod_headers.html
create table web."Header" (
  id              integer
    default nextval('web."Header_id_seq"')
    primary key,
  -- TODO: Allow a Header to be attached to either a site or a virtualHost
  httpd_site_bind integer  not null,
  sort_order      smallint not null
  check (
    sort_order >= 0
  ),
  "type" web."Header.Type"
    not null
    default 'Header',
  always          boolean  not null default false,
  -- TODO: Make an enum both in PostgreSQL and Java??? What happens if new values appear in the future?
  "action"        text     not null default 'set'
                           check ("action" in ('add', 'append', 'echo', 'edit', 'edit*', 'merge', 'set', 'setifempty', 'unset', 'note'))
                           check ("type"='Header' or "action" not in ('echo', 'note')),
  header          text     not null
                           check (
                             length(header) > 0
                             and header not like '%:'
                           ),
  "value"         text     check (("value" is not null)=("action" in ('add', 'append', 'edit', 'edit*', 'merge', 'set', 'setifempty', 'note'))),
  replacement     text     check ((replacement is not null)=("action" in ('edit', 'edit*'))),
  "when"          text     check (
                             "when" is null
                             or "when"='early'
                             or "when" like 'env=%'
                             or "when" like 'expr=%'
                           ),
  comment         text,
  unique(httpd_site_bind, sort_order)
);
grant all            on web."Header" to aoadmin;
grant select, delete on web."Header" to aoserv_app; -- , insert, update
grant insert         on web."Header" to management;
