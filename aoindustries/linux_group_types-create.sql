create table linux_group_types (
  resource_type text primary key
);
grant all on linux_group_types to aoadmin;
grant select on linux_group_types to aoserv_app;
