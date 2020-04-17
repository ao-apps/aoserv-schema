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

-- See http://localhost:8080/docs/ao/management/ip-addresses/release-net.IpAddress#procedure
create or replace view
  "net.management"."IpAddress.release"
as
select
  (select count(*) from net."Bind" nb where nb."ipAddress" = ia.id) as num_binds,
  (select
    count(*)
  from
    net."Bind" nb
    left join "net.management"."IpAddressJustifyingProtocol" ijp on nb.app_protocol = ijp."appProtocol"
  where
    nb."ipAddress" = ia.id
    and coalesce(
      ijp.justied,
      true -- Default to justified when not specified
    )
  ) as num_justifying_binds,
  se."name" as "SERVER",
  sepk."name" as "SERVER_PACKAGE",
  ao.hostname as "AO_SERVER",
  case
    when ao.server is null then 'N/A'
    else
      case
        when osv.operating_system='centos' then 'CentOS'
        else osv.operating_system
      end || ' ' || osv.version_number
  end as "OS",
  nd."deviceId" as "DEVICE_ID",
  ia."inetAddress" as "IP_ADDRESS"
from
             net."IpAddress"                       ia
  inner join net."Device"                          nd   on ia.device                   =   nd.id
  inner join net."DeviceId"                        ndi  on nd."deviceId"               =  ndi."name"
  inner join net."Host"                            se   on nd.server                   =   se.id
  inner join billing."Package"                     sepk on se.package                  = sepk.id
  left  join distribution."OperatingSystemVersion" osv  on se.operating_system_version =  osv.id
  left  join linux."Server"                        ao   on se.id                       =   ao.server
where
  -- May only release alias IPs
  ia."isAlias"
  -- Do not release loopback IPs
  and not ndi.is_loopback;

revoke all    on "net.management"."IpAddress.release" from aoadmin;
grant  select on "net.management"."IpAddress.release" to   aoadmin;
grant  select on "net.management"."IpAddress.release" to   management;
