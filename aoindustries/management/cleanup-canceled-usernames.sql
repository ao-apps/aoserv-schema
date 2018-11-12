create or replace view
  management."cleanup-canceled-usernames"
as
select
  bu.accounting,
  'remove_username ' || un.username as aosh_command,
  un.username
from
  public.usernames un
  inner join public.packages pk on un.package=pk."name"
  inner join public.businesses bu on pk.accounting=bu.accounting
  -- business_administrators remain even after canceled
  left outer join public.business_administrators ba on un.username=ba.username
where
  -- business_administrators remain even after canceled
  ba.username is null
  and bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all on management."cleanup-canceled-usernames" from aoadmin;
grant select on management."cleanup-canceled-usernames" to aoadmin;
