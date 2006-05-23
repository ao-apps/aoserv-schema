create sequence server_reports_pkey_seq cycle;
grant all on server_reports_pkey_seq to aoadmin;
grant select, update on server_reports_pkey_seq to aoserv_app;

create table server_reports (
  pkey integer
    default nextval('server_reports_pkey_seq')
    constraint server_reports_pkey primary key,
  time timestamp
    not null,
  interval int8
    not null,
  ao_server integer
    not null,
  failover_server integer
);
grant all on server_reports to aoadmin;
grant select, update, insert, delete on server_reports to aoserv_app;
