create table billing."Resource" (
  "name" text
    primary key
);
grant all    on billing."Resource" to aoadmin;
grant select on billing."Resource" to aoserv_app;
