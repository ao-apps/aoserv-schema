create or replace view
  management."remove-canceled-cvs_repositories"
as
select
  bu.accounting,
  'remove_cvs_repository ' || ao.hostname || ' ' || cr."path" as aosh_command,
  ao.hostname,
  cr."path"
from
  public.cvs_repositories cr
  inner join public.linux_server_accounts lsa on cr.linux_server_account=lsa.pkey
  inner join public.ao_servers ao on lsa.ao_server=ao.server
  inner join public.usernames un on lsa.username=un.username
  inner join public.packages pk on un.package=pk."name"
  inner join public.businesses bu on pk.accounting=bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all on management."remove-canceled-cvs_repositories" from aoadmin;
grant select on management."remove-canceled-cvs_repositories" to aoadmin;
