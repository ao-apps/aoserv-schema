create table "web/tomcat"."Worker" (
  bind integer
    primary key,
  "name" character(2)
    not null,
  "tomcatSite" integer
);
grant all                            on "web/tomcat"."Worker" to aoadmin;
grant select, insert, update, delete on "web/tomcat"."Worker" to aoserv_app;
