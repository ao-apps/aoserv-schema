create table raid_types (
  type text primary key,
  sort_order smallint not null unique
);
grant all on raid_types to aoadmin;
grant select on raid_types to aoserv_app;
