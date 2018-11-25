create table linux."GroupType" (
  "name" text
    primary key,
  description text
    not null
);
grant all    on linux."GroupType" to aoadmin;
grant select on linux."GroupType" to aoserv_app;
