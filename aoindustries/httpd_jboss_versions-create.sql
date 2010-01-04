create table httpd_jboss_versions (
  version integer primary key,
  tomcat_version integer not null,
  template_dir text not null
);
grant all on httpd_jboss_versions to aoadmin;
grant select on httpd_jboss_versions to aoserv_app;
