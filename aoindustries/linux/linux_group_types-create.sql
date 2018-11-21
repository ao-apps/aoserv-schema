create table linux_group_types (
  name text
    primary key,
  description text
    not null
);
grant all            on linux_group_types to aoadmin;
grant select, update on linux_group_types to aoserv_app;
