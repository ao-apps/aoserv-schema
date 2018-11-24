create sequence         net."Bind_pkey_seq" cycle;
grant all            on net."Bind_pkey_seq" to aoadmin;
grant select, update on net."Bind_pkey_seq" to aoserv_app;

create table net."Bind" (
  pkey integer
    default nextval('net."Bind_pkey_seq"')
    primary key,
  package text
    not null,
  server integer
    not null,
  "ipAddress" integer
    not null,
  port net."Port"
    not null,
  net_protocol net."NetProtocol"
    not null,
  app_protocol text
    not null,
  monitoring_enabled boolean
    not null
    default true,
  monitoring_parameters text,
  unique(server, "ipAddress", port, net_protocol)
);
grant all                            on net."Bind" to aoadmin;
grant select, insert, update, delete on net."Bind" to aoserv_app;
