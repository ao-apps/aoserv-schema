-- See http://localhost:8080/docs/ao/management/ip-addresses/release-ip-address#procedure
create or replace view
  management."release-ip-address"
as
select
  (select count(*) from public.net_binds nb  where nb.ip_address = ia.pkey) as num_binds,
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
  nd.device_id as "DEVICE_ID",
  ia.ip_address as "IP_ADDRESS"
from
                  public.ip_addresses               ia
       inner join public.net_devices                nd  on ia.net_device               =   nd.pkey
       inner join public.servers                    se  on nd.server                   =   se.pkey
       inner join public.packages                 sepk  on se.package                  = sepk.pkey
  left outer join public.operating_system_versions  osv on se.operating_system_version =  osv.pkey
  left outer join public.ao_servers                 ao  on se.pkey                     =   ao.server
where
  ia.is_alias;

revoke all    on management."release-ip-address" from aoadmin;
grant  select on management."release-ip-address" to   aoadmin;
