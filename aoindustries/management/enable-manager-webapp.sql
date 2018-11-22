-- See http://localhost:8080/docs/ao/management/apache-tomcat/enable-manager-webapp#procedure
create or replace view
  management."enable-manager-webapp"
as
select
  (
    select count(*) from public.httpd_tomcat_contexts htc
    where
      htc.tomcat_site = hts.httpd_site
      and htc.doc_base ~ '^/opt/apache-tomcat-\d+\.\d+/webapps/manager$'
  ) as num_manager_webapps,
  ao.hostname as "SERVER",
  hs."name" as "SITE_NAME",
  hst."name" as "SHARED_TOMCAT",
  substring(tv.version from '^\d+\.\d+') as "VERSION",
  case when exists (
    select * from public.httpd_tomcat_site_jk_mounts htsjm where
      htsjm.httpd_tomcat_site = hts.httpd_site
      and "path"='/*'
      and mount
  ) then 'Yes' else 'No' end as "HAS_JK_MOUNT_ALL"
from
             public.ao_servers                  ao
  inner join web."Site"                         hs on   ao.server              =   hs.ao_server
  inner join web."TomcatSite"                  hts on   hs.pkey                =  hts.httpd_site
  inner join distribution."SoftwareVersion"     tv on  hts.version             =   tv.pkey
  left  join public.httpd_tomcat_shared_sites htss on  hts.httpd_site          = htss.tomcat_site
  left  join web."SharedTomcat"                hst on htss.httpd_shared_tomcat =  hst.pkey;

revoke all    on management."enable-manager-webapp" from aoadmin;
grant  select on management."enable-manager-webapp" to   aoadmin;
