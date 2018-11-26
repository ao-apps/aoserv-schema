create or replace view
  "postgresql.management"."User.remove-canceled"
as
select
  bu.accounting,
  'remove_postgres_user ' || pu.username as aosh_command,
  pu.username
from
             postgresql."User"  pu
  inner join account."Username" un on pu.username   = un.username
  inner join billing."Package"  pk on un.package    = pk."name"
  inner join account."Account"  bu on pk.accounting = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "postgresql.management"."User.remove-canceled" from aoadmin;
grant  select on "postgresql.management"."User.remove-canceled" to   aoadmin;
