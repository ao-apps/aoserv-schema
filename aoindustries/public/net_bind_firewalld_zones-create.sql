create sequence net_bind_firewalld_zones_pkey_seq cycle;
grant all on net_bind_firewalld_zones_pkey_seq to aoadmin;
grant select, update on net_bind_firewalld_zones_pkey_seq to aoserv_app;

create table net_bind_firewalld_zones (
  pkey integer
    default nextval('net_bind_firewalld_zones_pkey_seq')
    constraint net_bind_firewalld_zones_pkey primary key,
  net_bind integer
    not null,
  firewalld_zone integer
    not null,
  unique(net_bind, firewalld_zone)
);
grant all on net_bind_firewalld_zones to aoadmin;
grant select, insert, delete on net_bind_firewalld_zones to aoserv_app;
