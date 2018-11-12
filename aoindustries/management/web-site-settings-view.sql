-- See http://localhost:8080/docs/ao/software/aoserv/aoserv-master#view-web-site-settings
create or replace view
  management."web-site-settings"
as select
  hs.pkey,
  hs.ao_server,
  ao.hostname,
  hs.site_name,
  hs.list_first,
  hs.is_manual,
  tv.version as php,
  hs.enable_cgi as cgi,
  hs.enable_ssi as ssi,
  hs.enable_htaccess as htaccess,
  hs.enable_indexes as indexes,
  hs.enable_follow_symlinks as symlinks,
  hs.enable_anonymous_ftp as anon_ftp,
  hts.block_webinf
from
  public.ao_servers ao
  inner join public.httpd_sites hs on ao.server=hs.ao_server
  left outer join public.technology_versions tv on hs.php_version=tv.pkey
  left outer join public.httpd_tomcat_sites hts on hs.pkey=hts.httpd_site;

grant select on management."web-site-settings" to aoadmin;
