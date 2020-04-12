create table "web.jboss"."Version" (
  version integer
    primary key,
  tomcat_version integer
    not null,
  template_dir text
    not null
);
grant all    on "web.jboss"."Version" to aoadmin;
grant select on "web.jboss"."Version" to aoserv_app;
