create table linux_account_types (
  "name" text
    primary key,
  description text
    not null,
  is_email boolean
    not null
);
grant all            on linux_account_types to aoadmin;
grant select, update on linux_account_types to aoserv_app;
