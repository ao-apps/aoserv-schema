create table postgresql."Server" (
  bind integer
    primary key,
  "name" text
    not null,
  ao_server integer
    not null,
  version integer
    not null,
  max_connections integer
    not null,
  sort_mem integer
    not null,
  shared_buffers integer
    not null,
  fsync boolean
    not null,
  unique (ao_server, "name")
);
grant all            on postgresql."Server" to aoadmin;
grant select         on postgresql."Server" to aoserv_app;
grant select, delete on postgresql."Server" to management;
