-- See http://localhost:8080/docs/ao/management/apache-tomcat/enable-manager-webapp#procedure
create or replace view
  management."enable-manager-webapp"
as
select
  (
    select count(*) from "web/tomcat"."Context" htc
    where
      htc.tomcat_site = hts.httpd_site
      and htc.doc_base ~ '^/opt/apache-tomcat-\d+\.\d+/webapps/manager$'
  ) as num_manager_webapps,
  ao.hostname as "SERVER",
  hs."name" as "SITE_NAME",
  hst."name" as "SHARED_TOMCAT",
  substring(tv.version from '^\d+\.\d+') as "VERSION",
  case when exists (
    select * from "web/tomcat"."JkMount" htsjm where
      htsjm.httpd_tomcat_site = hts.httpd_site
      and "path"='/*'
      and mount
  ) then 'Yes' else 'No' end as "HAS_JK_MOUNT_ALL"
from
             linux."Server"                    ao
  inner join web."Site"                        hs on   ao.server              =   hs.ao_server
  inner join "web/tomcat"."Site"              hts on   hs.pkey                =  hts.httpd_site
  inner join distribution."SoftwareVersion"    tv on  hts.version             =   tv.pkey
  left  join "web/tomcat"."SharedTomcatSite" htss on  hts.httpd_site          = htss.tomcat_site
  left  join "web/tomcat"."SharedTomcat"      hst on htss.httpd_shared_tomcat =  hst.pkey;

revoke all    on management."enable-manager-webapp" from aoadmin;
grant  select on management."enable-manager-webapp" to   aoadmin;
