create sequence         postgresql.postgres_servers_pkey_seq cycle;
grant all            on postgresql.postgres_servers_pkey_seq to aoadmin;
grant select, update on postgresql.postgres_servers_pkey_seq to aoserv_app;

create table postgres_servers (
  pkey integer
    default nextval('postgresql.postgres_servers_pkey_seq')
    primary key,
  "name" text
    not null,
  ao_server integer
    not null,
  version integer
    not null,
  max_connections integer
    not null,
  -- TODO: net_bind is non-null and unique, use it instead of pkey
  net_bind integer
    not null
    unique,
  sort_mem integer
    not null,
  shared_buffers integer
    not null,
  fsync boolean
    not null,
  unique (ao_server, "name")
);
grant all                            on postgres_servers to aoadmin;
grant select, insert, update, delete on postgres_servers to aoserv_app;
