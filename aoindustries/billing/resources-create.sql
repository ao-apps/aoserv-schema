create table resources (
  name text
    constraint resources_pkey primary key
);
grant all    on resources to aoadmin;
grant select on resources to aoserv_app;
