create table postgres_users (
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
grant all                            on postgres_users to aoadmin;
grant select, insert, update, delete on postgres_users to aoserv_app;
