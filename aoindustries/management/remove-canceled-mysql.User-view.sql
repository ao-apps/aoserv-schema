create or replace view
  management."remove-canceled-mysql.User"
as
select
  bu.accounting,
  'remove_mysql_user ' || mu.username as aosh_command,
  mu.username
from
             mysql."User"       mu
  inner join account."Username" un on mu.username   = un.username
  inner join billing."Package"  pk on un.package    = pk."name"
  inner join account."Account"  bu on pk.accounting = bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-mysql.User" from aoadmin;
grant  select on management."remove-canceled-mysql.User" to   aoadmin;
