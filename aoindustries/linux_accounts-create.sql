create table linux_accounts (
  username text
    constraint linux_accounts_pkey primary key,
  name text
    not null,
  office_location text,
  office_phone text,
  home_phone text,
  type text
    not null,
  shell text
    not null,
  created timestamp
    not null
    default now(),
  disable_log integer
);
grant all on linux_accounts to aoadmin;
grant select, insert, update, delete on linux_accounts to aoserv_app;
