create table backup_levels (
  level smallint
    constraint backup_levels_pkey primary key,
  display text
    not null
);
grant all on backup_levels to aoadmin;
grant select, update on backup_levels to aoserv_app;
