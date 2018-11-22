-- See http://localhost:8080/docs/ao/management/ip-addresses/release-IPAddress#procedure
create or replace view
  management."release-IPAddress"
as
select
  (select count(*) from public.net_binds nb where nb."ipAddress" = ia.id) as num_binds,
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
  nd."deviceID" as "DEVICE_ID",
  ia."inetAddress" as "IP_ADDRESS"
from
             public."IPAddress"                ia
  inner join public.net_devices                nd   on ia."netDevice"              =   nd.pkey
  inner join public.net_device_ids             ndi  on nd."deviceID"               =  ndi."name"
  inner join public.servers                    se   on nd.server                   =   se.pkey
  inner join billing."Package"                 sepk on se.package                  = sepk.pkey
  left  join public.operating_system_versions  osv  on se.operating_system_version =  osv.pkey
  left  join public.ao_servers                 ao   on se.pkey                     =   ao.server
where
  -- May only release alias IPs
  ia."isAlias"
  -- Do not release loopback IPs
  and not ndi.is_loopback;

revoke all    on management."release-IPAddress" from aoadmin;
grant  select on management."release-IPAddress" to   aoadmin;
