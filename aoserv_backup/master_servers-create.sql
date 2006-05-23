/**
 * This table is a minimal copy for referential integrity checks and queries.
 */
create table master_servers (
  pkey integer
    constraint master_servers_pkey primary key,
  username text
    not null,
  server integer
    not null,
  unique(username, server)
);
grant all on master_servers to aoadmin;
grant select, insert, update, delete on master_servers to aoserv_app;
