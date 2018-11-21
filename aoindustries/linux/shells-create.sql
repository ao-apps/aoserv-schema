create table shells (
  path text
    primary key,
  is_login bool
    not null,
  is_system bool
    not null
);
grant all            on shells to aoadmin;
grant select, update on shells to aoserv_app;
