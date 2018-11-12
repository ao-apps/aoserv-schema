create or replace view
  management."cleanup-ip_addresses.hostname"
as select
  bu.accounting,
  'set_ip_address_hostname '
  || ia.ip_address
  || ' ' || coalesce(ao.hostname, se.pkey::text)
  || ' ' || nd.device_id
  || ' ' || case
    when ip_address like '66.160.183.%' then 
      'unassigned' || substring(ip_address from 12) || '.net1.fc.aoindustries.com'
    when ip_address like '64.62.174.%' then
      'unassigned' || substring(ip_address from 11) || '.net2.fc.aoindustries.com'
    when ip_address like '64.71.144.%' then
      'unassigned' || substring(ip_address from 11) || '.net3.fc.aoindustries.com'
    else
      ('IP pattern unknown: ' || ip_address)::integer::text -- Force exception
  end as aosh_command,
  ao.hostname,
  ia.ip_address
from
  public.ip_addresses ia
  inner join public.packages pk on ia.package=pk."name"
  inner join public.businesses bu on pk.accounting=bu.accounting
  inner join public.net_devices nd on ia.net_device=nd.pkey
  inner join public.servers se on nd.server=se.pkey
  left outer join public.ao_servers ao on se.pkey=ao.server
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all on management."cleanup-ip_addresses.hostname" from aoadmin;
grant select on management."cleanup-ip_addresses.hostname" to aoadmin;
