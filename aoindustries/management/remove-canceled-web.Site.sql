create or replace view
  management."remove-canceled-web.Site"
as
select
  bu.accounting,
  'remove_httpd_site ' || hs."name" || ' ' || ao.hostname as aosh_command,
  ao.hostname,
  hs."name"
from
             web."Site"        hs
  inner join server."AoServer" ao on hs.ao_server  = ao.server
  inner join billing."Package" pk on hs.package    = pk."name"
  inner join account."Account" bu on pk.accounting = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-web.Site" from aoadmin;
grant  select on management."remove-canceled-web.Site" to   aoadmin;
