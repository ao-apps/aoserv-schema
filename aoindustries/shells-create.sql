create table shells (
  "path" text primary key
);
grant all on shells to aoadmin;
grant select on shells to aoserv_app;
