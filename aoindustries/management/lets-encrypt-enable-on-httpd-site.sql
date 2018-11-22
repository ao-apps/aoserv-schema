-- See http://localhost:8080/docs/ao/certificate-authorities/lets-encrypt/enable-on-httpd-site
create or replace view
  management."lets-encrypt-enable-on-httpd-site"
as
select
  ao.hostname as "SERVER",
  hs."name" as "SITE_NAME", hs.linux_group as "LINUX_GROUP",
  is_80.pkey as "HSB_80", is_443.pkey as "HSB_443",
  coalesce(is_443."name", is_80."name", '') as "HSB_NAME",
  coalesce(is_443.disable_log, is_80.disable_log) as "DISABLE_LOG",
  coalesce(is_443.hostname, is_80.hostname) as "PRIMARY_HOSTNAME",
  array_to_string(
    array(
      select hostname from public.httpd_site_urls where
        httpd_site_bind=coalesce(is_443.pkey, is_80.pkey) and not is_primary
    ),
    ','
   ) as "ALT_HOSTNAMES"
from
             web."Site"                            hs
  inner join public.ao_servers                     ao on hs.ao_server                =  ao.server
  inner join public.servers                        se on ao.server                   =  se.pkey
  inner join distribution."OperatingSystemVersion" osv on se.operating_system_version = osv.pkey
  left  join (
    select hsb_80.pkey, hsb_80.httpd_site, hsb_80."name", hsb_80.disable_log, hsu_80.hostname from
                 web."VirtualHost"       hsb_80
      inner join public.net_binds         nb_80 on hsb_80.httpd_bind =  nb_80.pkey            and  nb_80.port = 80
      inner join public.httpd_site_urls  hsu_80 on hsb_80.pkey       = hsu_80.httpd_site_bind and hsu_80.is_primary
  ) is_80 on hs.pkey=is_80.httpd_site
  left  join (
    select hsb_443.pkey, hsb_443.httpd_site, hsb_443."name", hsb_443.disable_log, hsu_443.hostname, sc_443.cert_file as ssl_cert_file from
                 web."VirtualHost"       hsb_443
      inner join public.net_binds         nb_443 on hsb_443.httpd_bind  =  nb_443.pkey            and  nb_443.port = 443
      inner join public.httpd_site_urls  hsu_443 on hsb_443.pkey        = hsu_443.httpd_site_bind and hsu_443.is_primary
      left  join public.ssl_certificates  sc_443 on hsb_443.certificate =  sc_443.pkey
  ) is_443 on hs.pkey=is_443.httpd_site and coalesce(is_80."name", '')=coalesce(is_443."name", '')
where
  -- Let's Encrypt not supported on CentOS 5
  (osv.operating_system, osv.version_number)!=('centos', '5')
  and (is_443.ssl_cert_file is null or is_443.ssl_cert_file not like '/etc/letsencrypt/%');

revoke all    on management."lets-encrypt-enable-on-httpd-site" from aoadmin;
grant  select on management."lets-encrypt-enable-on-httpd-site" to   aoadmin;
