/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2000-2006, 2008, 2009, 2010, 2013, 2017, 2018, 2020, 2025  AO Industries, Inc.
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

create sequence         web."HttpdServer_id_seq" cycle;
grant all            on web."HttpdServer_id_seq" to aoadmin;
grant select, update on web."HttpdServer_id_seq" to management;

create table web."HttpdServer" (
  id integer
    default nextval('web."HttpdServer_id_seq"')
    primary key,
  ao_server integer
    not null,
  "name" text
    check (
      ("name" is null or length("name") > 0)
      -- Avoid possible configuration file name conflict in Rocky 9
      and "name" != 'httpd'
    ),
  can_add_sites boolean
    not null,
  linux_server_account integer
    not null,
  linux_server_group integer
    not null,
  mod_php_version integer,
  use_suexec boolean
    not null,
  package integer
    not null,
  is_shared boolean
    not null,
  use_mod_perl boolean
    not null,
  timeout integer
    not null,
  max_concurrency integer
    not null
    default 200,
  monitoring_concurrency_low integer
    default 120
    check (
      monitoring_concurrency_low is null or (
        monitoring_concurrency_low > 0
        and monitoring_concurrency_low <= max_concurrency
      )
    ),
  monitoring_concurrency_medium integer
    default 140
    check (
      monitoring_concurrency_medium is null or (
        monitoring_concurrency_low is not null
        and monitoring_concurrency_medium > monitoring_concurrency_low
        and monitoring_concurrency_medium <= max_concurrency
      )
    ),
  monitoring_concurrency_high integer
    default 160
    check (
      monitoring_concurrency_high is null or (
        monitoring_concurrency_medium is not null
        and monitoring_concurrency_high > monitoring_concurrency_medium
        and monitoring_concurrency_high <= max_concurrency
      )
    ),
  monitoring_concurrency_critical integer
    default 180
    check (
      monitoring_concurrency_critical is null or (
        monitoring_concurrency_high is not null
        and monitoring_concurrency_critical > monitoring_concurrency_high
        and monitoring_concurrency_critical <= max_concurrency
      )
    ),
  mod_access_compat boolean,
  mod_actions boolean,
  mod_alias boolean,
  mod_auth_basic boolean,
  mod_authn_core boolean,
  mod_authn_file boolean,
  mod_authz_core boolean,
  mod_authz_groupfile boolean,
  mod_authz_host boolean,
  mod_authz_user boolean,
  mod_autoindex boolean,
  mod_deflate boolean,
  mod_dir boolean,
  mod_filter boolean,
  mod_headers boolean,
  mod_include boolean,
  mod_jk boolean,
  mod_log_config boolean,
  mod_mime boolean,
  mod_mime_magic boolean,
  mod_negotiation boolean,
  mod_proxy boolean,
  mod_proxy_http boolean,
  mod_reqtimeout boolean,
  mod_rewrite boolean,
  mod_setenvif boolean,
  mod_socache_shmcb boolean,
  mod_ssl boolean,
  mod_status boolean,
  mod_wsgi boolean
);
grant all                    on web."HttpdServer" to aoadmin;
grant select, delete         on web."HttpdServer" to aoserv_app;
grant select, insert, delete on web."HttpdServer" to management;
