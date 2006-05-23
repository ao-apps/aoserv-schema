create table httpd_tomcat_std_sites (
  tomcat_site integer
    constraint httpd_tomcat_std_sites_pkey primary key,
  tomcat4_shutdown_port integer,
  tomcat4_shutdown_key text,
  unique(tomcat4_shutdown_port)
);
grant all on httpd_tomcat_std_sites to aoadmin;
grant select, insert, update, delete on httpd_tomcat_std_sites to aoserv_app;
