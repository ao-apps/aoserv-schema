create or replace view
  management."remove-canceled-IPAddress.package"
as
select
  bu.accounting,
  'set_ip_address_package '
  || ia."inetAddress"
  || ' ' || coalesce(ao.hostname, se.pkey::text)
  || ' ' || nd."deviceID"
  || ' ' || management."find-business-not-canceled"(bu.parent) as aosh_command,
  ao.hostname,
  ia."inetAddress"
from
             public."IPAddress" ia
  inner join public.packages    pk on ia.package     = pk.pkey
  inner join public.businesses  bu on pk.accounting  = bu.accounting
  inner join public.net_devices nd on ia."netDevice" = nd.pkey
  inner join public.servers     se on nd.server      = se.pkey
  left  join public.ao_servers  ao on se.pkey        = ao.server
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-IPAddress.package" from aoadmin;
grant  select on management."remove-canceled-IPAddress.package" to   aoadmin;
