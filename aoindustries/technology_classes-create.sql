create table technology_classes (
  "name" text primary key
);
grant all on technology_classes to aoadmin;
grant select on technology_classes to aoserv_app;
