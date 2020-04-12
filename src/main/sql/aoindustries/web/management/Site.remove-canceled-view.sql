create or replace view
  "web.management"."Site.remove-canceled"
as
select
  bu.accounting,
  'remove_httpd_site ' || hs."name" || ' ' || ao.hostname as aosh_command,
  ao.hostname,
  hs."name"
from
             web."Site"          hs
  inner join linux."Server"      ao on hs.ao_server  = ao.server
  inner join billing."Package"   pk on hs.package    = pk."name"
  inner join account."Account"   bu on pk.accounting = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "web.management"."Site.remove-canceled" from aoadmin;
grant  select on "web.management"."Site.remove-canceled" to   aoadmin;
