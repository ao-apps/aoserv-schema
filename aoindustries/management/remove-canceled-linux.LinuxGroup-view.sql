create or replace view
  management."remove-canceled-linux.LinuxGroup"
as
select
  bu.accounting,
  'remove_linux_group ' || lg."name" as aosh_command,
  lg."name"
from
             linux."LinuxGroup" lg
  inner join billing."Package"  pk on lg.package    = pk."name"
  inner join account."Account"  bu on pk.accounting = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-linux.LinuxGroup" from aoadmin;
grant  select on management."remove-canceled-linux.LinuxGroup" to   aoadmin;
