create table dns_types (
  type text
    primary key,
  description  text    not null,
  has_priority boolean not null,
  has_weight   boolean not null,
  has_port     boolean not null,
  param_ip     boolean not null
);
grant all            on dns_types to aoadmin;
grant select, update on dns_types to aoserv_app;
