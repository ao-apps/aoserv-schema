-- See http://localhost:8080/docs/ao/certificate-authorities/lets-encrypt/enable-on-httpd-site
create or replace view
  "pki.management"."lets-encrypt-enable-on-httpd-site"
as
select
  ao.hostname as "SERVER",
  hs."name" as "SITE_NAME", hs.linux_group as "LINUX_GROUP",
  is_80.id as "HSB_80", is_443.id as "HSB_443",
  coalesce(is_443."name", is_80."name", '') as "HSB_NAME",
  coalesce(is_443.disable_log, is_80.disable_log) as "DISABLE_LOG",
  coalesce(is_443.hostname, is_80.hostname) as "PRIMARY_HOSTNAME",
  array_to_string(
    array(
      select
        hostname::text -- Cast might not be required in future versions of PostgreSQL
      from
        web."VirtualHostName"
      where
        httpd_site_bind = coalesce(is_443.id, is_80.id) and not is_primary
    ),
    ','
   ) as "ALT_HOSTNAMES"
from
             web."Site"                            hs
  inner join linux."Server"                        ao  on hs.ao_server                =  ao.server
  inner join net."Host"                       se  on ao.server                   =  se.id
  inner join distribution."OperatingSystemVersion" osv on se.operating_system_version = osv.id
  left  join (
    select hsb_80.id, hsb_80.httpd_site, hsb_80."name", hsb_80.disable_log, hsu_80.hostname from
                 web."VirtualHost"     hsb_80
      inner join net."Bind"             nb_80 on hsb_80.httpd_bind =  nb_80.id              and  nb_80.port = 80
      inner join web."VirtualHostName" hsu_80 on hsb_80.id         = hsu_80.httpd_site_bind and hsu_80.is_primary
  ) is_80 on hs.id = is_80.httpd_site
  left  join (
    select hsb_443.id, hsb_443.httpd_site, hsb_443."name", hsb_443.disable_log, hsu_443.hostname, sc_443.cert_file as ssl_cert_file from
                 web."VirtualHost"     hsb_443
      inner join net."Bind"             nb_443 on hsb_443.httpd_bind  =  nb_443.id              and  nb_443.port = 443
      inner join web."VirtualHostName" hsu_443 on hsb_443.id          = hsu_443.httpd_site_bind and hsu_443.is_primary
      left  join pki."Certificate"      sc_443 on hsb_443.certificate =  sc_443.id
  ) is_443 on hs.id = is_443.httpd_site and coalesce(is_80."name", '') = coalesce(is_443."name", '')
where
  -- Let's Encrypt not supported on CentOS 5
  (osv.operating_system, osv.version_number)!=('centos', '5')
  and (is_443.ssl_cert_file is null or is_443.ssl_cert_file not like '/etc/letsencrypt/%');

revoke all    on "pki.management"."lets-encrypt-enable-on-httpd-site" from aoadmin;
grant  select on "pki.management"."lets-encrypt-enable-on-httpd-site" to   aoadmin;
