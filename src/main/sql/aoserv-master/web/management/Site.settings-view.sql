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

-- See http://localhost:8080/docs/ao/software/aoserv/aoserv-master#view-web-site-settings
create or replace view
  "web.management"."Site.settings"
as
select
  hs.id,
  hs.ao_server,
  ao.hostname,
  hs."name",
  hs.list_first,
  hs.is_manual,
  tv.version as php,
  hs.enable_cgi as cgi,
  hs.enable_ssi as ssi,
  hs.enable_htaccess as htaccess,
  hs.enable_indexes as indexes,
  hs.enable_follow_symlinks as symlinks,
  hs.enable_anonymous_ftp as anon_ftp,
  hts.block_webinf
from
             linux."Server"                 ao
  inner join web."Site"                     hs  on ao.server      = hs.ao_server
  left  join distribution."SoftwareVersion" tv  on hs.php_version = tv.id
  left  join "web.tomcat"."Site"            hts on hs.id          = hts.httpd_site;

revoke all    on "web.management"."Site.settings" from aoadmin;
grant  select on "web.management"."Site.settings" to   aoadmin;
