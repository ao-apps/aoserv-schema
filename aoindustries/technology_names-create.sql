create table technology_names (
  name text primary key
);
grant all on technology_names to aoadmin;
grant select, update on technology_names to aoserv_app;
