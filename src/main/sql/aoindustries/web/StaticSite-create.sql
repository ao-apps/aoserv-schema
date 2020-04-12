create table web."StaticSite" (
  httpd_site integer
    primary key
);
grant all                    on web."StaticSite" to aoadmin;
grant select, update, delete on web."StaticSite" to aoserv_app;
