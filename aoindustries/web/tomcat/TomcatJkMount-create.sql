create sequence         "web/tomcat"."TomcatJkMount_pkey_seq" cycle;
grant all            on "web/tomcat"."TomcatJkMount_pkey_seq" to aoadmin;
grant select, update on "web/tomcat"."TomcatJkMount_pkey_seq" to aoserv_app;

create table "web/tomcat"."TomcatJkMount" (
  pkey              integer
    default nextval('"web/tomcat"."TomcatJkMount_pkey_seq"')
    primary key,
  httpd_tomcat_site integer  not null,
  "path"            text     not null,
  mount             boolean  not null,
  unique(httpd_tomcat_site, "path")
);
grant all                    on "web/tomcat"."TomcatJkMount" to aoadmin;
grant select, insert, delete on "web/tomcat"."TomcatJkMount" to aoserv_app;
