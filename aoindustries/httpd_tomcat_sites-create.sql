create table httpd_tomcat_sites (
  httpd_site integer
    constraint httpd_tomcat_sites_pkey primary key,
  version integer
    not null,
  use_apache bool
    not null
);
grant all on httpd_tomcat_sites to aoadmin;
grant select, insert, update, delete on httpd_tomcat_sites to aoserv_app;
