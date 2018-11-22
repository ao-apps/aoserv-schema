create table web."JbossVersion" (
  version integer
    primary key,
  tomcat_version integer
    not null,
  template_dir text
    not null
);
grant all    on web."JbossVersion" to aoadmin;
grant select on web."JbossVersion" to aoserv_app;
