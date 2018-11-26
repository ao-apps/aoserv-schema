create table "web.tomcat"."SharedTomcatSite" (
  tomcat_site integer
    primary key,
  httpd_shared_tomcat integer
    not null
);
grant all                    on "web.tomcat"."SharedTomcatSite" to aoadmin;
grant select, insert, delete on "web.tomcat"."SharedTomcatSite" to aoserv_app;
