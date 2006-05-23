create table private_ftp_servers (
  net_bind integer
    constraint private_ftp_servers_pkey primary key,
  root text
    not null,
  logfile text
    not null,
  hostname text
    not null,
  email text
    not null,
  created timestamp
    default now()
    not null,
  linux_server_account integer
    not null,
  linux_server_group integer
    not null,
  allow_anonymous bool
    not null
);
grant all on private_ftp_servers to aoadmin;
grant select, delete on private_ftp_servers to aoserv_app;
