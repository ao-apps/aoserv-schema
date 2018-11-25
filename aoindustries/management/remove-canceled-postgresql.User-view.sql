create or replace view
  management."remove-canceled-postgresql.User"
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

revoke all    on management."remove-canceled-postgresql.User" from aoadmin;
grant  select on management."remove-canceled-postgresql.User" to   aoadmin;