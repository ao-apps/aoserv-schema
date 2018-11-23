create table web."SharedTomcatSite" (
  tomcat_site integer
    primary key,
  httpd_shared_tomcat integer
    not null
);
grant all                    on web."SharedTomcatSite" to aoadmin;
grant select, insert, delete on web."SharedTomcatSite" to aoserv_app;
