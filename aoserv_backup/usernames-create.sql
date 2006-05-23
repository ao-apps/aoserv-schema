/**
 * This table is a minimal copy for referential integrity checks and queries.
 */
create table usernames (
  username text
    constraint usernames_pkey primary key,
  package text
    not null
);
grant all on usernames to aoadmin;
grant select, insert, update, delete on usernames to aoserv_app;
