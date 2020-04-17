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

create or replace view
  "web.tomcat.management"."SharedTomcat.remove-canceled"
as
select
  bu.accounting,
  'remove_httpd_shared_tomcat ' || hst."name" || ' ' || ao.hostname as aosh_command,
  ao.hostname,
  hst."name"
from
             "web.tomcat"."SharedTomcat" hst
  inner join linux."Server"              ao  on hst.ao_server            =  ao.server
  inner join linux."UserServer"          lsa on hst.linux_server_account = lsa.id
  inner join account."User"              un  on lsa.username             =  un.username
  inner join billing."Package"           pk  on  un.package              =  pk."name"
  inner join account."Account"           bu  on  pk.accounting           =  bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "web.tomcat.management"."SharedTomcat.remove-canceled" from aoadmin;
grant  select on "web.tomcat.management"."SharedTomcat.remove-canceled" to   aoadmin;
