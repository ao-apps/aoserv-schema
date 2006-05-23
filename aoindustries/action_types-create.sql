create table action_types (
  type           text      constraint action_types_pkey primary key,
  description   text       not null
);
grant all on action_types to aoadmin;
grant select, update on action_types to aoserv_app;
