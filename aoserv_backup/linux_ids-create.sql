/**
 * This table is a minimal copy for referential integrity checks and queries.
 */
create table linux_ids (
  id integer
    constraint linux_ids_pkey primary key
);
grant all on linux_ids to aoadmin;
grant select, insert, update, delete on linux_ids to aoserv_app;
