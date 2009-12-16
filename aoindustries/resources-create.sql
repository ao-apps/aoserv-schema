create sequence resources_pkey_seq cycle;
grant all on resources_pkey_seq to aoadmin;
grant select, update on resources_pkey_seq to aoserv_app;

create table resources (
  pkey integer default nextval('resources_pkey_seq') constraint resources_pkey primary key,
  owner text
    -- resource #1 is the only one allowed to have a null owner
    check (owner is not null or pkey=1),
  resource_type text not null,
  created timestamp default now() not null,
  created_by text not null,
  disable_log integer,
  last_enabled timestamp default now() not null
);
grant all on resources to aoadmin;
grant select, update, insert, delete on resources to aoserv_app;
