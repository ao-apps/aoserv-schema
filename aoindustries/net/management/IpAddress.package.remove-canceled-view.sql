create or replace view
  "net.management"."IpAddress.package.remove-canceled"
as
select
  bu.accounting,
  'set_ip_address_package '
  || ia."inetAddress"
  || ' ' || coalesce(ao.hostname, se.id::text)
  || ' ' || nd."deviceID"
  || ' ' || "account.management"."Account.findBusinessNotCanceled"(bu.parent) as aosh_command,
  ao.hostname,
  ia."inetAddress"
from
             net."IpAddress"   ia
  inner join billing."Package" pk on ia.package     = pk.id
  inner join account."Account" bu on pk.accounting  = bu.accounting
  inner join net."Device"      nd on ia."netDevice" = nd.id
  inner join net."Host"        se on nd.server      = se.id
  left  join linux."Server"    ao on se.id          = ao.server
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "net.management"."IpAddress.package.remove-canceled" from aoadmin;
grant  select on "net.management"."IpAddress.package.remove-canceled" to   aoadmin;
