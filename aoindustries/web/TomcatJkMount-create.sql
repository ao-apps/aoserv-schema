create sequence         web."TomcatJkMount_pkey_seq" cycle;
grant all            on web."TomcatJkMount_pkey_seq" to aoadmin;
grant select, update on web."TomcatJkMount_pkey_seq" to aoserv_app;

create table web."TomcatJkMount" (
  pkey              integer
    default nextval('web."TomcatJkMount_pkey_seq"')
    primary key,
  httpd_tomcat_site integer  not null,
  "path"            text     not null,
  mount             boolean  not null,
  unique(httpd_tomcat_site, "path")
);
grant all                    on web."TomcatJkMount" to aoadmin;
grant select, insert, delete on web."TomcatJkMount" to aoserv_app;
