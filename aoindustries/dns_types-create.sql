create table dns_types (
  "type" text primary key
);
grant all on dns_types to aoadmin;
grant select on dns_types to aoserv_app;
