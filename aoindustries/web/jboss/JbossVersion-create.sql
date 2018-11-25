create table "web/jboss"."JbossVersion" (
  version integer
    primary key,
  tomcat_version integer
    not null,
  template_dir text
    not null
);
grant all    on "web/jboss"."JbossVersion" to aoadmin;
grant select on "web/jboss"."JbossVersion" to aoserv_app;
