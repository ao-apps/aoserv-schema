create table linux_accounts (
  username text
    primary key,
  "name" text,
  office_location text,
  office_phone text,
  home_phone text,
  "type" text
    not null,
  shell text
    not null,
  created timestamp with time zone
    not null
    default now(),
  disable_log integer
);
grant all                            on linux_accounts to aoadmin;
grant select, insert, update, delete on linux_accounts to aoserv_app;
