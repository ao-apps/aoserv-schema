create or replace view
  management."cleanup-canceled-mysql_users"
as
select
  bu.accounting,
  'remove_mysql_user ' || mu.username as aosh_command,
  mu.username
from
  public.mysql_users mu
  inner join public.usernames un on mu.username=un.username
  inner join public.packages pk on un.package=pk."name"
  inner join public.businesses bu on pk.accounting=bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all on management."cleanup-canceled-mysql_users" from aoadmin;
grant select on management."cleanup-canceled-mysql_users" to aoadmin;
