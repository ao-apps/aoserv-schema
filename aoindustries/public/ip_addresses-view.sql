--
-- A view of all alias IP addresses that may be released.
--
-- The IP must:
-- 1) be an alias
-- 2) be on a non-loopback device
-- 3) not have any net_binds associated with it
--
create or replace view unused_ip_aliases as
select
  se.pkey as server,
  se.package as server_package,
  se."name" as "server_name",
  nd.pkey as net_device,
  nd.device_id as net_device_id,
  ia.pkey as ip_address_pkey,
  ia.ip_address as ip_address,
  ia.hostname as hostname,
  ia.package as package,
  ia.available as available
from
             servers         se
  inner join net_devices     nd on se.pkey      =  nd.server
  inner join net_device_ids ndi on nd.device_id = ndi."name"
  inner join ip_addresses    ia on nd.pkey      =  ia.net_device
where
  -- May only release alias IPs
  ia.is_alias
  -- Do not release loopback IPs
  and not ndi.is_loopback
  -- Must not have any net_binds
  and (select nb.pkey from net_binds nb where ia.pkey=nb.ip_address limit 1) is null
;
grant all on unused_ip_aliases to aoadmin;
