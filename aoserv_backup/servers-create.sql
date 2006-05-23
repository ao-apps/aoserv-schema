/**
 * This table is a minimal copy for referential integrity checks and queries.
 */
create table servers (
  pkey integer
    constraint servers_pkey primary key,
  hostname text
    not null
    unique,
  farm text
    not null
);
grant all on servers to aoadmin;
grant select, insert, update, delete on servers to aoserv_app;
