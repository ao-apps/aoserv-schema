create table interbase_users (
  username text
    not null
    constraint interbase_users_pkey primary key,
  first_name varchar(32),
  middle_name varchar(32),
  last_name varchar(32),
  disable_log integer
);
grant all on interbase_users to aoadmin;
grant select, update, insert, delete on interbase_users to aoserv_app;
