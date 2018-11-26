create or replace view
  "linux.management"."User.remove-canceled"
as
select
  bu.accounting,
  'remove_linux_account ' || la.username as aosh_command,
  la.username
from
             linux."User"       la
  inner join account."Username" un on la.username   = un.username
  inner join billing."Package"  pk on un.package    = pk."name"
  inner join account."Account"  bu on pk.accounting = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "linux.management"."User.remove-canceled" from aoadmin;
grant  select on "linux.management"."User.remove-canceled" to   aoadmin;
