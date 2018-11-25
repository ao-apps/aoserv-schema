create table ticket."Language" (
  code text primary key
);
grant all    on ticket."Language" to aoadmin;
grant select on ticket."Language" to aoserv_app;
