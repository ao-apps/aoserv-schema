/**
 * This table is a minimal copy for referential integrity checks and queries.
 */
create table backup_levels (
  level smallint
    constraint backup_levels_pkey primary key
);
grant all on backup_levels to aoadmin;
grant select, update, insert, delete on backup_levels to aoserv_app;
