create table linux_group_types (
  name text
    constraint linux_group_types_pkey primary key,
  description text
    not null
);
grant all            on linux_group_types to aoadmin;
grant select, update on linux_group_types to aoserv_app;
