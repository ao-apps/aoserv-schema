create table linux_groups (
  name text
    constraint linux_groups_pkey primary key,
  package text
    not null,
  type text
    not null
);
grant all on linux_groups to aoadmin;
grant select, insert, update, delete on linux_groups to aoserv_app;
