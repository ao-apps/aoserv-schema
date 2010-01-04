create table group_names (
  group_name text primary key,
  accounting text not null,
  disable_log integer
);
grant all on group_names to aoadmin;
grant select, insert, update, delete on group_names to aoserv_app;
