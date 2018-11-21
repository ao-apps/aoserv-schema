create sequence         net.net_binds_pkey_seq cycle;
grant all            on net.net_binds_pkey_seq to aoadmin;
grant select, update on net.net_binds_pkey_seq to aoserv_app;

create table net_binds (
  pkey integer
    default nextval('net.net_binds_pkey_seq')
    primary key,
  package text
    not null,
  server integer
    not null,
  "ipAddress" integer
    not null,
  port integer
    not null,
  net_protocol text
    not null,
  app_protocol text
    not null,
  monitoring_enabled boolean
    not null
    default true,
  monitoring_parameters text,
  unique(server, "ipAddress", port, net_protocol)
);
grant all                            on net_binds to aoadmin;
grant select, insert, update, delete on net_binds to aoserv_app;
