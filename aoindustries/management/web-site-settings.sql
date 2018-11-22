-- See http://localhost:8080/docs/ao/software/aoserv/aoserv-master#view-web-site-settings
create or replace view
  management."web-site-settings"
as
select
  hs.pkey,
  hs.ao_server,
  ao.hostname,
  hs."name",
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
             public.ao_servers              ao
  inner join web."Site"                     hs  on ao.server      = hs.ao_server
  left  join distribution."SoftwareVersion" tv  on hs.php_version = tv.pkey
  left  join web."TomcatSite"               hts on hs.pkey        = hts.httpd_site;

revoke all    on management."web-site-settings" from aoadmin;
grant  select on management."web-site-settings" to   aoadmin;
