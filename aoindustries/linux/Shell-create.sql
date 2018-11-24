create table linux."Shell" (
  "path" text
    primary key,
  is_login boolean
    not null,
  is_system boolean
    not null
);
grant all    on linux."Shell" to aoadmin;
grant select on linux."Shell" to aoserv_app;
