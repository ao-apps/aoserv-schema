-- See http://localhost:8080/docs/ao/software/3rd-party/mysql/bind-to-localhost#procedure
create or replace view
  management."httpd_tomcat_data_sources-joined"
as
select
  ao.hostname,
  htds.pkey,
  hs."name" as site_name,
  htc."path",
  htds."name",
  htds.driver_class_name,
  htds.url
from
             public.httpd_tomcat_data_sources htds
  inner join public.httpd_tomcat_contexts      htc on htds.tomcat_context = htc.pkey
  inner join public.httpd_sites                 hs on  htc.tomcat_site    =  hs.pkey
  inner join public.ao_servers                  ao on   hs.ao_server      =  ao.server;

revoke all    on management."httpd_tomcat_data_sources-joined" from aoadmin;
grant  select on management."httpd_tomcat_data_sources-joined" to   aoadmin;
