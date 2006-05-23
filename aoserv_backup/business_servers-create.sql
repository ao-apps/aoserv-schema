/**
 * This table is a minimal copy for referential integrity checks and queries.
 */
create table business_servers (
  pkey integer
    constraint business_servers_pkey primary key,
  accounting text
    not null,
  server integer
    not null,
  unique(accounting, server)
);
grant all on business_servers to aoadmin;
grant select, update, insert, delete on business_servers to aoserv_app;
