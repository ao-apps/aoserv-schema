create table time_zones (
  name text constraint time_zones_pkey primary key
);
grant all    on time_zones to aoadmin;
grant select on time_zones to aoserv_app;
