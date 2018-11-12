create or replace view
  management."remove-canceled-linux_groups"
as
select
  bu.accounting,
  'remove_linux_group ' || lg."name" as aosh_command,
  lg."name"
from
  public.linux_groups lg
  inner join public.packages pk on lg.package=pk."name"
  inner join public.businesses bu on pk.accounting=bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all on management."remove-canceled-linux_groups" from aoadmin;
grant select on management."remove-canceled-linux_groups" to aoadmin;
