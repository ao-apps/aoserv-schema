create table linux."TimeZone" (
  "name" text primary key
);
grant all    on linux."TimeZone" to aoadmin;
grant select on linux."TimeZone" to aoserv_app;
