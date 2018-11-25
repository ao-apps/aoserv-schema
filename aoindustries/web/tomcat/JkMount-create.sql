create sequence         "web/tomcat"."JkMount_pkey_seq" cycle;
grant all            on "web/tomcat"."JkMount_pkey_seq" to aoadmin;
grant select, update on "web/tomcat"."JkMount_pkey_seq" to aoserv_app;

create table "web/tomcat"."JkMount" (
  pkey              integer
    default nextval('"web/tomcat"."JkMount_pkey_seq"')
    primary key,
  httpd_tomcat_site integer  not null,
  "path"            text     not null,
  mount             boolean  not null,
  unique(httpd_tomcat_site, "path")
);
grant all                    on "web/tomcat"."JkMount" to aoadmin;
grant select, insert, delete on "web/tomcat"."JkMount" to aoserv_app;
