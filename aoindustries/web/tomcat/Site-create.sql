create table "web/tomcat"."Site" (
  httpd_site integer
    primary key,
  version integer
    not null,
  block_webinf boolean not null default true
);
grant all                            on "web/tomcat"."Site" to aoadmin;
grant select, insert, update, delete on "web/tomcat"."Site" to aoserv_app;
