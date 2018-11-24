create sequence server.ao_server_daemon_hosts_pkey_seq cycle;
grant all    on server.ao_server_daemon_hosts_pkey_seq to aoadmin;
grant select on server.ao_server_daemon_hosts_pkey_seq to aoserv_app;

-- TODO: Same thing here as master_hosts, support cidr and require 0.0.0.0/32 or ::/128 to allow from anywhere
create table ao_server_daemon_hosts (
  pkey integer
    default nextval('server.ao_server_daemon_hosts_pkey_seq')
    primary key,
  ao_server integer
    not null,
  host text
    not null,
  unique(ao_server, host)
);
grant all    on ao_server_daemon_hosts to aoadmin;
grant select on ao_server_daemon_hosts to aoserv_app;
