create table shells (
  "path" text
    primary key,
  is_login boolean
    not null,
  is_system boolean
    not null
);
grant all            on shells to aoadmin;
grant select, update on shells to aoserv_app;
