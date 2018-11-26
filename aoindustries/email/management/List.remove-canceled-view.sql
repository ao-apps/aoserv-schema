create or replace view
  "email.management"."List.remove-canceled"
as
select
  bu.accounting,
  'remove_email_list ' || el."path" || ' ' || ao.hostname as aosh_command,
  ao.hostname,
  el."path"
from
             email."List"        el
  inner join linux."GroupServer" lsg on  el.linux_server_group = lsg.id
  inner join linux."Server"      ao  on lsg.ao_server          =  ao.server
  inner join linux."Group"       lg  on lsg."name"             =  lg."name"
  inner join billing."Package"   pk  on  lg.package            =  pk."name"
  inner join account."Account"   bu  on  pk.accounting         =  bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "email.management"."List.remove-canceled" from aoadmin;
grant  select on "email.management"."List.remove-canceled" to   aoadmin;
