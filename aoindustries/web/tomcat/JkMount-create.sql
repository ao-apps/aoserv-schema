create sequence         "web/tomcat"."JkMount_id_seq" cycle;
grant all            on "web/tomcat"."JkMount_id_seq" to aoadmin;
grant select, update on "web/tomcat"."JkMount_id_seq" to aoserv_app;

create table "web/tomcat"."JkMount" (
  id integer
    default nextval('"web/tomcat"."JkMount_id_seq"')
    primary key,
  httpd_tomcat_site integer not null,
  "path" text not null,
  mount boolean not null,
  unique(httpd_tomcat_site, "path")
);
grant all                    on "web/tomcat"."JkMount" to aoadmin;
grant select, insert, delete on "web/tomcat"."JkMount" to aoserv_app;
