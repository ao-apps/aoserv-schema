create or replace view
  "scm.management"."CvsRepository.remove-canceled"
as
select
  bu.accounting,
  'remove_cvs_repository ' || ao.hostname || ' ' || cr."path" as aosh_command,
  ao.hostname,
  cr."path"
from
             scm."CvsRepository" cr
  inner join linux."UserServer"  lsa on  cr.linux_server_account = lsa.id
  inner join linux."Server"      ao  on lsa.ao_server            =  ao.server
  inner join account."Username"  un  on lsa.username             =  un.username
  inner join billing."Package"   pk  on  un.package              =  pk."name"
  inner join account."Account"   bu  on  pk.accounting           =  bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on "scm.management"."CvsRepository.remove-canceled" from aoadmin;
grant  select on "scm.management"."CvsRepository.remove-canceled" to   aoadmin;
