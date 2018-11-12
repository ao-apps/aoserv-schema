create or replace view
  management."remove-canceled-httpd_sites"
as
select
  bu.accounting,
  'remove_httpd_site ' || hs.site_name || ' ' || ao.hostname as aosh_command,
  ao.hostname,
  hs.site_name
from
             public.httpd_sites hs
  inner join public.ao_servers  ao on hs.ao_server  = ao.server
  inner join public.packages    pk on hs.package    = pk."name"
  inner join public.businesses  bu on pk.accounting = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all on management."remove-canceled-httpd_sites" from aoadmin;
grant select on management."remove-canceled-httpd_sites" to aoadmin;
