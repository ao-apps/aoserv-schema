create table linux_account_types (
  name text
    constraint linux_account_types_pkey primary key,
  description text
    not null,
  is_email bool
    not null
);
grant all on linux_account_types to aoadmin;
grant select, update on linux_account_types to aoserv_app;
