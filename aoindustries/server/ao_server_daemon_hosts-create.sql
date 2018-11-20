create sequence ao_server_daemon_hosts_pkey_seq cycle;
grant all    on ao_server_daemon_hosts_pkey_seq to aoadmin;
grant select on ao_server_daemon_hosts_pkey_seq to aoserv_app;

create table ao_server_daemon_hosts (
  pkey integer
    default nextval('ao_server_daemon_hosts_pkey_seq')
    constraint ao_server_daemon_hosts_pkey primary key,
  ao_server integer
    not null,
  host text
    not null,
  unique(ao_server, host)
);
grant all    on ao_server_daemon_hosts to aoadmin;
grant select on ao_server_daemon_hosts to aoserv_app;
