create table processor_types (
  type text primary key,
  sort_order smallint not null unique
);
grant all    on processor_types to aoadmin;
grant select on processor_types to aoserv_app;
