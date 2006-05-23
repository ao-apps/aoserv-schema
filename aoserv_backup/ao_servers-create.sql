/**
 * This table is a minimal copy for referential integrity checks and queries.
 */
create table ao_servers (
  server integer
    constraint ao_servers_pkey primary key,
  failover_server integer
);
grant all on ao_servers to aoadmin;
grant select, update, insert, delete on ao_servers to aoserv_app;
