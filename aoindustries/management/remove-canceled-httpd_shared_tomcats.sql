create or replace view
  management."remove-canceled-httpd_shared_tomcats"
as
select
  bu.accounting,
  'remove_httpd_shared_tomcat ' || hst.name || ' ' || ao.hostname as aosh_command,
  ao.hostname,
  hst."name"
from
             public.httpd_shared_tomcats  hst
  inner join public.ao_servers             ao on hst.ao_server            =  ao.server
  inner join public.linux_server_accounts lsa on hst.linux_server_account = lsa.pkey
  inner join public.usernames              un on lsa.username             =  un.username
  inner join public.packages               pk on  un.package              =  pk."name"
  inner join account."Account"             bu on  pk.accounting           =  bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-httpd_shared_tomcats" from aoadmin;
grant  select on management."remove-canceled-httpd_shared_tomcats" to   aoadmin;
