create sequence         web.httpd_tomcat_site_jk_mounts_pkey_seq cycle;
grant all            on web.httpd_tomcat_site_jk_mounts_pkey_seq to aoadmin;
grant select, update on web.httpd_tomcat_site_jk_mounts_pkey_seq to aoserv_app;

create table httpd_tomcat_site_jk_mounts (
  pkey              integer
    default nextval('web.httpd_tomcat_site_jk_mounts_pkey_seq')
    primary key,
  httpd_tomcat_site integer  not null,
  "path"            text     not null,
  mount             boolean  not null,
  unique(httpd_tomcat_site, "path")
);
grant all                    on httpd_tomcat_site_jk_mounts to aoadmin;
grant select, insert, delete on httpd_tomcat_site_jk_mounts to aoserv_app;
