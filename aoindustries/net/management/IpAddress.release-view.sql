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
  inner join net."Device"                          nd   on ia."netDevice"              =   nd.id
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
