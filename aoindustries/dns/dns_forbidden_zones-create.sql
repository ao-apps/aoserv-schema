create table dns_forbidden_zones (
  "zone" text
    primary key
);
grant all    on dns_forbidden_zones to aoadmin;
grant select on dns_forbidden_zones to aoserv_app;
