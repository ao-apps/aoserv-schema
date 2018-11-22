create table httpd_tomcat_shared_sites (
  tomcat_site integer
    primary key,
  httpd_shared_tomcat integer
    not null
);
grant all                    on httpd_tomcat_shared_sites to aoadmin;
grant select, insert, delete on httpd_tomcat_shared_sites to aoserv_app;
