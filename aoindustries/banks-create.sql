create table banks (
  "name" text constraint banks_pkey primary key,
  display text not null
);
grant all on banks to aoadmin;
grant select on banks to aoserv_app;
