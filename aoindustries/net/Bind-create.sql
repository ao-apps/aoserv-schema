create sequence         net."Bind_id_seq" cycle;
grant all            on net."Bind_id_seq" to aoadmin;
grant select, update on net."Bind_id_seq" to aoserv_app;
grant select, update on net."Bind_id_seq" to management;

create table net."Bind" (
  id integer
    default nextval('net."Bind_id_seq"')
    primary key,
  package text
    not null,
  server integer
    not null,
  "ipAddress" integer
    not null,
  port "com.aoindustries.net"."Port"
    not null,
  net_protocol "com.aoindustries.net"."Protocol"
    not null,
    -- TODO: Should be TCP, UDP, SCTP only, matching Port class?
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
grant select, insert, delete         on net."Bind" to management;
