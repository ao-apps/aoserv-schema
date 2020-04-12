create table account."UsState" (
  code character(2)
    primary key,
  "name" text
    not null
);
grant all    on account."UsState" to aoadmin;
grant select on account."UsState" to aoserv_app;
