create table web."TomcatSite" (
  httpd_site integer
    primary key,
  version integer
    not null,
  block_webinf boolean not null default true
);
grant all                            on web."TomcatSite" to aoadmin;
grant select, insert, update, delete on web."TomcatSite" to aoserv_app;
