/**
 * This table is a minimal copy for referential integrity checks and queries.
 */
create table server_farms (
  name text
    constraint server_farms_pkey primary key,
  allow_same_server_backup bool
    not null,
  backup_farm text
    not null
);
grant all on server_farms to aoadmin;
grant select, insert, update, delete on server_farms to aoserv_app;
