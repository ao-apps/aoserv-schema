create table resources (
  "name" text
    primary key
);
grant all    on resources to aoadmin;
grant select on resources to aoserv_app;
