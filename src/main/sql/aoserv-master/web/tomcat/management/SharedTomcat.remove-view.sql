/*
 * aoserv-schema - Database schema for the AOServ Platform.
 * Copyright (C) 2024  AO Industries, Inc.
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

-- See http://localhost:8080/docs/ao/management/httpd/remove-shared-tomcat#procedure
create or replace view
  "web.tomcat.management"."SharedTomcat.remove"
as
select
  (
    select count(*) from "web.tomcat"."SharedTomcatSite" sts where st.id = sts.httpd_shared_tomcat
  ) as num_sites,
  ao.hostname as "SERVER",
  case
    when osv.operating_system = 'centos' then 'CentOS'
    when osv.operating_system = 'rocky' then 'Rocky'
    else osv.operating_system
  end || ' ' || osv.version_number as "OS",
  st."name" as "NAME",
  lsa.username as "ARCHIVE_USER"
from
             linux."Server"                        ao
  inner join "web.tomcat"."SharedTomcat"           st  on ao.server                   =  st.ao_server
  inner join linux."UserServer"                    lsa on st.linux_server_account     =  lsa.id
  inner join net."Host"                            se  on ao.server                   =  se.id
  inner join distribution."OperatingSystemVersion" osv on se.operating_system_version = osv.id;

revoke all    on "web.tomcat.management"."SharedTomcat.remove" from aoadmin;
grant  select on "web.tomcat.management"."SharedTomcat.remove" to   aoadmin;
grant  select on "web.tomcat.management"."SharedTomcat.remove" to   management;
