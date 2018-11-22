create table httpd_tomcat_versions (
  version integer
    primary key,
  install_dir text
    not null,
  requires_mod_jk boolean
    not null
);
grant all            on httpd_tomcat_versions to aoadmin;
grant select, update on httpd_tomcat_versions to aoserv_app;