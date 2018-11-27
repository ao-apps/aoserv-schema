create sequence postgresql."Server_id_seq" cycle;
grant all    on postgresql."Server_id_seq" to aoadmin;
grant select on postgresql."Server_id_seq" to aoserv_app;

create table postgresql."Server" (
  -- TODO: net_bind is non-null and unique, use it instead of id
  id integer
    default nextval('postgresql."Server_id_seq"')
    primary key,
  "name" text
    not null,
  ao_server integer
    not null,
  version integer
    not null,
  max_connections integer
    not null,
  net_bind integer
    not null
    unique,
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
