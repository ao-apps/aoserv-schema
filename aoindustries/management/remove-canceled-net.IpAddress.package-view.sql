create or replace view
  management."remove-canceled-net.IpAddress.package"
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
             net."IpAddress"     ia
  inner join billing."Package"   pk on ia.package     = pk.pkey
  inner join account."Account"   bu on pk.accounting  = bu.accounting
  inner join net."Device"        nd on ia."netDevice" = nd.pkey
  inner join public.servers      se on nd.server      = se.pkey
  left  join linux."LinuxServer" ao on se.pkey        = ao.server
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-net.IpAddress.package" from aoadmin;
grant  select on management."remove-canceled-net.IpAddress.package" to   aoadmin;
