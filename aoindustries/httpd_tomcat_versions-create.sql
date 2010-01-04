create table httpd_tomcat_versions (
  version integer primary key,
  install_dir text not null,
  requires_mod_jk bool not null
);
grant all on httpd_tomcat_versions to aoadmin;
grant select on httpd_tomcat_versions to aoserv_app;
