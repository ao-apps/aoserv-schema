create sequence postgres_servers_pkey_seq cycle;
grant all on postgres_servers_pkey_seq to aoadmin;
grant select, update on postgres_servers_pkey_seq to aoserv_app;

create table postgres_servers (
  pkey integer
    default nextval('postgres_servers_pkey_seq')
    constraint postgres_servers_pkey primary key,
  name text
    not null,
  ao_server integer
    not null,
  version integer
    not null,
  max_connections integer
    not null,
  net_bind integer
    not null
    unique,
  sort_mem integer
    not null,
  shared_buffers integer
    not null,
  fsync bool
    not null,
  unique (ao_server, name)
);
grant all on postgres_servers to aoadmin;
grant select, insert, update, delete on postgres_servers to aoserv_app;
