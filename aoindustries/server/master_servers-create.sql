create sequence         master.master_servers_pkey_seq cycle;
grant all            on master.master_servers_pkey_seq to aoadmin;
grant select, update on master.master_servers_pkey_seq to aoserv_app;

create table master_servers (
  pkey integer
    default nextval('master.master_servers_pkey_seq')
    primary key,
  username text
    not null,
  server integer
    not null,
  unique(username, server)
);
grant all            on master_servers to aoadmin;
grant select, insert on master_servers to aoserv_app;
