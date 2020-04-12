-- TODO: Make an enum both in PostgreSQL and Java
create table ticket."Priority" (
  priority text
    primary key
);
grant all    on ticket."Priority" to aoadmin;
grant select on ticket."Priority" to aoserv_app;
