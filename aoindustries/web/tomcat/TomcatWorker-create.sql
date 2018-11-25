create table "web/tomcat"."TomcatWorker" (
  bind integer
    primary key,
  "name" character(2)
    not null,
  "tomcatSite" integer
);
grant all                            on "web/tomcat"."TomcatWorker" to aoadmin;
grant select, insert, update, delete on "web/tomcat"."TomcatWorker" to aoserv_app;
