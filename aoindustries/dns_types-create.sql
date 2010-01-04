create table dns_types (
  type text primary key,
  description text not null,
  is_mx bool not null,
  param_ip bool not null
);
grant all on dns_types to aoadmin;
grant select on dns_types to aoserv_app;
