create table postgresql."User" (
  username text
    primary key,
  createdb boolean
    not null
    default false,
  trace boolean
    not null
    default false,
  super boolean
    not null
    default false,
  catupd boolean
    not null
    default false,
  disable_log integer
);
grant all                            on postgresql."User" to aoadmin;
grant select, insert, update, delete on postgresql."User" to aoserv_app;
