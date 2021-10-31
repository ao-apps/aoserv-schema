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

-- See http://localhost:8080/docs/ao/software/3rd-party/mysql/bind-to-localhost#procedure
create or replace view
  "web.tomcat.management"."ContextDataSource-joined"
as
select
  ao.hostname,
  htds.id,
  hs."name" as site_name,
  htc."path",
  htds."name",
  htds.driver_class_name,
  htds.url
from
             "web.tomcat"."ContextDataSource" htds
  inner join "web.tomcat"."Context"           htc on htds.tomcat_context = htc.id
  inner join web."Site"                       hs  on  htc.tomcat_site    =  hs.id
  inner join linux."Server"                   ao  on   hs.ao_server      =  ao.server;

revoke all    on "web.tomcat.management"."ContextDataSource-joined" from aoadmin;
grant  select on "web.tomcat.management"."ContextDataSource-joined" to   aoadmin;
