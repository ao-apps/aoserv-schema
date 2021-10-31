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
 * along with aoserv-schema.  If not, see <https://www.gnu.org/licenses/>.
 */

-- See http://localhost:8080/docs/ao/management/apache-tomcat/enable-manager-webapp#procedure
create or replace view
  "web.tomcat.management"."Context.enable-manager-webapp"
as
select
  (
    select count(*) from "web.tomcat"."Context" htc
    where
      htc.tomcat_site = hts.httpd_site
      and htc.doc_base ~ '^/opt/apache-tomcat-\d+\.\d+/webapps/manager$'
  ) as num_manager_webapps,
  ao.hostname as "SERVER",
  hs."name" as "SITE_NAME",
  hst."name" as "SHARED_TOMCAT",
  substring(tv.version from '^\d+\.\d+') as "VERSION",
  case when exists (
    select * from "web.tomcat"."JkMount" htsjm where
      htsjm.httpd_tomcat_site = hts.httpd_site
      and "path"='/*'
      and mount
  ) then 'Yes' else 'No' end as "HAS_JK_MOUNT_ALL"
from
             linux."Server"                    ao
  inner join web."Site"                        hs on   ao.server              =   hs.ao_server
  inner join "web.tomcat"."Site"              hts on   hs.id                  =  hts.httpd_site
  inner join distribution."SoftwareVersion"    tv on  hts.version             =   tv.id
  left  join "web.tomcat"."SharedTomcatSite" htss on  hts.httpd_site          = htss.tomcat_site
  left  join "web.tomcat"."SharedTomcat"      hst on htss.httpd_shared_tomcat =  hst.id;

revoke all    on "web.tomcat.management"."Context.enable-manager-webapp" from aoadmin;
grant  select on "web.tomcat.management"."Context.enable-manager-webapp" to   aoadmin;
grant  select on "web.tomcat.management"."Context.enable-manager-webapp" to   management;
