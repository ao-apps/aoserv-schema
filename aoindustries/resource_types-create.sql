create table resource_types (
  name text primary key
);
grant all on resource_types to aoadmin;
grant select on resource_types to aoserv_app;
