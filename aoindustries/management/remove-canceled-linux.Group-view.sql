create or replace view
  management."remove-canceled-linux.Group"
as
select
  bu.accounting,
  'remove_linux_group ' || lg."name" as aosh_command,
  lg."name"
from
             linux."Group"     lg
  inner join billing."Package" pk on lg.package    = pk."name"
  inner join account."Account" bu on pk.accounting = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-linux.Group" from aoadmin;
grant  select on management."remove-canceled-linux.Group" to   aoadmin;
