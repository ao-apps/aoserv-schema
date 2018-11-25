-- See http://localhost:8080/docs/ao/software/3rd-party/mysql/bind-to-localhost#procedure
create or replace view
  management."web.TomcatContextDataSource-joined"
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
             web."TomcatContextDataSource" htds
  inner join web."TomcatContext"           htc on htds.tomcat_context = htc.pkey
  inner join web."Site"                    hs  on  htc.tomcat_site    =  hs.pkey
  inner join linux."Server"                ao  on   hs.ao_server      =  ao.server;

revoke all    on management."web.TomcatContextDataSource-joined" from aoadmin;
grant  select on management."web.TomcatContextDataSource-joined" to   aoadmin;
