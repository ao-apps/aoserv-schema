create table linux_ids (
  id integer
    constraint linux_ids_pkey primary key
);
grant all on linux_ids to aoadmin;
grant select, update on linux_ids to aoserv_app;
