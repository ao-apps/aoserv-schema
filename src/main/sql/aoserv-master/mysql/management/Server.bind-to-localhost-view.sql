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
  "mysql.management"."Server.bind-to-localhost"
as
select
  ia."inetAddress",
  ao.hostname as "SERVER",
  ms."name" as "NAME",
  nb.id as "NET_BIND",
  array_to_string(
    array(
      select fz."name" from
                  net."BindFirewallZone" nbfz
        left join net."FirewallZone"     fz   on nbfz.firewalld_zone = fz.id
      where
        nb.id = nbfz.net_bind
      order by fz."name"
    ), ' '
  ) as "ZONES",
  (select (regexp_matches(nb.monitoring_parameters, '(?:^|&)password=([^&]*)(?:&|$)'))[1]) as "OLD_MONITORING_PASSWORD"
from
             linux."Server"  ao
  inner join mysql."Server"  ms on ao.server      = ms.ao_server
  inner join net."Bind"      nb on ms.bind        = nb.id
  inner join net."IpAddress" ia on nb."ipAddress" = ia.id
where
  ia."inetAddress" != '127.0.0.1';

revoke all    on "mysql.management"."Server.bind-to-localhost" from aoadmin;
grant  select on "mysql.management"."Server.bind-to-localhost" to   aoadmin;
