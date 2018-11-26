create or replace view
  management."remove-canceled-web.tomcat.SharedTomcat"
as
select
  bu.accounting,
  'remove_httpd_shared_tomcat ' || hst."name" || ' ' || ao.hostname as aosh_command,
  ao.hostname,
  hst."name"
from
             "web.tomcat"."SharedTomcat" hst
  inner join linux."Server"              ao  on hst.ao_server            =  ao.server
  inner join linux."UserServer"          lsa on hst.linux_server_account = lsa.id
  inner join account."Username"          un  on lsa.username             =  un.username
  inner join billing."Package"           pk  on  un.package              =  pk."name"
  inner join account."Account"           bu  on  pk.accounting           =  bu.accounting
where
  bu.canceled is not null and bu.canceled < (now()-'30 days'::interval);

revoke all    on management."remove-canceled-web.tomcat.SharedTomcat" from aoadmin;
grant  select on management."remove-canceled-web.tomcat.SharedTomcat" to   aoadmin;
