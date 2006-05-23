create sequence net_binds_pkey_seq cycle;
grant all on net_binds_pkey_seq to aoadmin;
grant select, update on net_binds_pkey_seq to aoserv_app;

create table net_binds (
  pkey integer
    default nextval('net_binds_pkey_seq')
    constraint net_binds_pkey primary key,
  package text
    not null,
  ao_server integer
    not null,
  ip_address integer
    not null,
  port integer
    not null,
  net_protocol text
    not null,
  app_protocol text
    not null,
  open_firewall bool
    not null,
  monitoring_enabled bool
    not null,
  unique(ao_server, ip_address, port, net_protocol)
);
grant all on net_binds to aoadmin;
grant select, insert, update, delete on net_binds to aoserv_app;
