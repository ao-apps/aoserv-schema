create table dns_types (
  type text
    constraint dns_types_pkey primary key,
  description text
    not null,
  is_mx bool
    not null,
  param_ip bool
    not null
);
grant all on dns_types to aoadmin;
grant select, update on dns_types to aoserv_app;
