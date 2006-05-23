/**
 * This table is a minimal copy for referential integrity checks and queries.
 */
create table backup_retentions (
  days smallint
    constraint backup_retentions_pkey primary key
);
grant all on backup_retentions to aoadmin;
grant select, update, insert, delete on backup_retentions to aoserv_app;
