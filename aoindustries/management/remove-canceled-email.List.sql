create or replace view
  management."remove-canceled-email.List"
as
select
  bu.accounting,
  'remove_email_list ' || el."path" || ' ' || ao.hostname as aosh_command,
  ao.hostname,
  el."path"
from
             email."List"                el
  inner join public.linux_server_groups lsg on  el.linux_server_group = lsg.pkey
  inner join public.ao_servers           ao on lsg.ao_server          =  ao.server
  inner join public.linux_groups         lg on lsg."name"             =  lg."name"
  inner join billing."Package"           pk on  lg.package            =  pk."name"
  inner join account."Account"           bu on  pk.accounting         =  bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-email.List" from aoadmin;
grant  select on management."remove-canceled-email.List" to   aoadmin;
