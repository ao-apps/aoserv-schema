-- See http://localhost:8080/docs/ao/software/3rd-party/mysql/bind-to-localhost#procedure
create or replace view
  "web.tomcat.management"."ContextDataSource-joined"
as
select
  ao.hostname,
  htds.id,
  hs."name" as site_name,
  htc."path",
  htds."name",
  htds.driver_class_name,
  htds.url
from
             "web.tomcat"."ContextDataSource" htds
  inner join "web.tomcat"."Context"           htc on htds.tomcat_context = htc.id
  inner join web."Site"                       hs  on  htc.tomcat_site    =  hs.id
  inner join linux."Server"                   ao  on   hs.ao_server      =  ao.server;

revoke all    on "web.tomcat.management"."ContextDataSource-joined" from aoadmin;
grant  select on "web.tomcat.management"."ContextDataSource-joined" to   aoadmin;
