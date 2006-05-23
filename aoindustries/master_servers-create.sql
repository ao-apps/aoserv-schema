create sequence master_servers_pkey_seq cycle;
grant all on master_servers_pkey_seq to aoadmin;
grant select, update on master_servers_pkey_seq to aoserv_app;

create table master_servers (
  pkey integer
    default nextval('master_servers_pkey_seq')
    constraint master_servers_pkey primary key,
  username text
    not null,
  server integer
    not null,
  unique(username, server)
);
grant all on master_servers to aoadmin;
grant select, insert on master_servers to aoserv_app;
