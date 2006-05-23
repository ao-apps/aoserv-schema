/**
 * This table is a minimal copy for referential integrity checks and queries.
 */
create table mysql_servers (
  pkey integer
    constraint mysql_servers_pkey primary key,
  name text
    not null,
  ao_server integer
    not null,
  unique (ao_server, name)
);
grant all on mysql_servers to aoadmin;
grant select, insert, update, delete on mysql_servers to aoserv_app;
