create or replace view
  "linux.management"."Group.remove-canceled"
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

revoke all    on "linux.management"."Group.remove-canceled" from aoadmin;
grant  select on "linux.management"."Group.remove-canceled" to   aoadmin;
