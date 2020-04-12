create table ticket."Status" (
  status text primary key,
  sort_order smallint not null unique
);
grant all    on ticket."Status" to aoadmin;
grant select on ticket."Status" to aoserv_app;
