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
 * along with aoserv-schema.  If not, see <http://www.gnu.org/licenses/>.
 */

create sequence         web."RewriteRule_id_seq" cycle;
grant all            on web."RewriteRule_id_seq" to aoadmin;
grant select         on web."RewriteRule_id_seq" to aoserv_app;
grant select, update on web."RewriteRule_id_seq" to management;

create table web."RewriteRule" (
  id            integer
    default nextval('web."RewriteRule_id_seq"')
    primary key,
  -- TODO: Allow a RewriteRule to be attached to either a site or a virtualHost
  "virtualHost" integer  not null,
  "sortOrder"   smallint not null
  check (
    "sortOrder" >= 0
  ),
  pattern       text     not null,
  substitution  text     not null,
  flags         text
    CHECK (flags IS NULL OR flags != ''),
  comment       text,
  unique("virtualHost", "sortOrder")
);
grant all            on web."RewriteRule" to aoadmin;
grant select, delete on web."RewriteRule" to aoserv_app;
grant insert         on web."RewriteRule" to management;
