create table postgres_users (
  username text
    primary key,
  createdb bool
    not null
    default false,
  trace bool
    not null
    default false,
  super bool
    not null
    default false,
  catupd bool
    not null
    default false,
  disable_log integer
);
grant all                            on postgres_users to aoadmin;
grant select, insert, update, delete on postgres_users to aoserv_app;
