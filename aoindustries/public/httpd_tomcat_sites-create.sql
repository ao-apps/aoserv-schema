create table httpd_tomcat_sites (
  httpd_site integer
    constraint httpd_tomcat_sites_pkey primary key,
  version integer
    not null,
  block_webinf boolean not null default true
);
grant all on httpd_tomcat_sites to aoadmin;
grant select, insert, update, delete on httpd_tomcat_sites to aoserv_app;
