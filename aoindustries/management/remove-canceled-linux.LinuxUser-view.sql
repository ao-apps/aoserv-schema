create or replace view
  management."remove-canceled-linux.LinuxUser"
as
select
  bu.accounting,
  'remove_linux_account ' || la.username as aosh_command,
  la.username
from
             linux."LinuxUser"  la
  inner join account."Username" un on la.username   = un.username
  inner join billing."Package"  pk on un.package    = pk."name"
  inner join account."Account"  bu on pk.accounting = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-linux.LinuxUser" from aoadmin;
grant  select on management."remove-canceled-linux.LinuxUser" to   aoadmin;
