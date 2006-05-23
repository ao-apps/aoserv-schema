/**
 * This table is a minimal copy for referential integrity checks and queries.
 */
create table postgres_servers (
  pkey integer
    constraint postgres_servers_pkey primary key,
  name text
    not null,
  ao_server integer
    not null,
  unique (ao_server, name)
);
grant all on postgres_servers to aoadmin;
grant select, insert, update, delete on postgres_servers to aoserv_app;
