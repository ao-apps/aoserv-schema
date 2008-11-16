create table disk_types (
  type text primary key,
  sort_order smallint not null unique
);
grant all on disk_types to aoadmin;
grant select on disk_types to aoserv_app;
