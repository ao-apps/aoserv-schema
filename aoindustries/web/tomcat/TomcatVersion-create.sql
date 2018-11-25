create table "web/tomcat"."TomcatVersion" (
  version integer
    primary key,
  install_dir text
    not null,
  requires_mod_jk boolean
    not null
);
grant all    on "web/tomcat"."TomcatVersion" to aoadmin;
grant select on "web/tomcat"."TomcatVersion" to aoserv_app;
