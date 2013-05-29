create table linux_ids (
  id integer
    constraint linux_ids_pkey primary key,
  is_system bool
    not null
    default false
);
grant all on linux_ids to aoadmin;
grant select, update on linux_ids to aoserv_app;
