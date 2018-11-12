create table dns_forbidden_zones (
  zone text
    constraint dns_forbidden_zones_pkey primary key
);
grant all on dns_forbidden_zones to aoadmin;
grant select on dns_forbidden_zones to aoserv_app;
