create or replace view
  management."remove-canceled-IPAddress.hostname"
as
select
  bu.accounting,
  'set_ip_address_hostname '
  || ia."inetAddress"
  || ' ' || coalesce(ao.hostname, se.pkey::text)
  || ' ' || nd."deviceID"
  || ' ' || case
    when inet '66.160.183.0/24' >> "inetAddress" then
      'unassigned' || split_part(host("inetAddress"), '.', 4) || '.net1.fc.aoindustries.com'
    when inet '64.62.174.0/24' >> "inetAddress" then
      'unassigned' || split_part(host("inetAddress"), '.', 4) || '.net2.fc.aoindustries.com'
    when inet '64.71.144.0/25' >> "inetAddress" then
      'unassigned' || split_part(host("inetAddress"), '.', 4) || '.net3.fc.aoindustries.com'
    else
      "schema".raise_exception('IP pattern unknown: ' || "inetAddress")
  end as aosh_command,
  ao.hostname,
  ia."inetAddress"
from
             public."IPAddress"  ia
  inner join public.packages     pk on ia.package     = pk.pkey
  inner join account."Account"   bu on pk.accounting  = bu.accounting
  inner join public.net_devices  nd on ia."netDevice" = nd.pkey
  inner join public.servers      se on nd.server      = se.pkey
  left  join public.ao_servers   ao on se.pkey        = ao.server
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-IPAddress.hostname" from aoadmin;
grant  select on management."remove-canceled-IPAddress.hostname" to   aoadmin;
