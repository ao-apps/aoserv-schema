create sequence resources_pkey_seq cycle;
grant all on resources_pkey_seq to aoadmin;
grant select, update on resources_pkey_seq to aoserv_app;

create table resources (
  pkey integer default nextval('resources_pkey_seq') primary key,
  resource_type text not null,
  accounting text not null,
  created timestamp default now() not null,
  created_by text not null,
  disable_log integer,
  last_enabled timestamp default now() not null,
  check (last_enabled>=created)
);
grant all on resources to aoadmin;
grant select, update, insert, delete on resources to aoserv_app;
