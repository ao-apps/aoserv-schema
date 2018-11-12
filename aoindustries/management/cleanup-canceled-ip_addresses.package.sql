create or replace view
  management."cleanup-canceled-ip_addresses.package"
as
select
  bu.accounting,
  'set_ip_address_package '
  || ia.ip_address
  || ' ' || coalesce(ao.hostname, se.pkey::text)
  || ' ' || nd.device_id
  || ' ' || management."find-business-not-canceled"(bu.parent) as aosh_command,
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

revoke all on management."cleanup-canceled-ip_addresses.package" from aoadmin;
grant select on management."cleanup-canceled-ip_addresses.package" to aoadmin;
