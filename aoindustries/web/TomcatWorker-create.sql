create table web."TomcatWorker" (
  bind integer
    primary key,
  "name" character(2)
    not null,
  "tomcatSite" integer
);
grant all                            on web."TomcatWorker" to aoadmin;
grant select, insert, update, delete on web."TomcatWorker" to aoserv_app;
