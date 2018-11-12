create table httpd_tomcat_std_sites (
  tomcat_site integer
    constraint httpd_tomcat_std_sites_pkey primary key,
  tomcat4_shutdown_port integer
    unique,
  tomcat4_shutdown_key text,
  max_post_size integer
    check (max_post_size is null or max_post_size >= 0),
  unpack_wars boolean not null,
  auto_deploy boolean not null
);
grant all on httpd_tomcat_std_sites to aoadmin;
grant select, insert, update, delete on httpd_tomcat_std_sites to aoserv_app;
