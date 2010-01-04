create table linux_account_types (
  resource_type text primary key
);
grant all on linux_account_types to aoadmin;
grant select on linux_account_types to aoserv_app;
