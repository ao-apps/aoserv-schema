/**
 * This table is a minimal copy for referential integrity checks and queries.
 */
create table packages (
  pkey integer
    constraint packages_pkey primary key,
  name text
    not null
    unique,
  accounting text
    not null
);
grant all on packages to aoadmin;
grant select, insert, update, delete on packages to aoserv_app;
