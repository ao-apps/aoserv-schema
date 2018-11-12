create or replace view
  management."remove-canceled-postgres_users"
as
select
  bu.accounting,
  'remove_postgres_user ' || pu.username as aosh_command,
  pu.username
from
  public.postgres_users pu
  inner join public.usernames un on pu.username=un.username
  inner join public.packages pk on un.package=pk."name"
  inner join public.businesses bu on pk.accounting=bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all on management."remove-canceled-postgres_users" from aoadmin;
grant select on management."remove-canceled-postgres_users" to aoadmin;
