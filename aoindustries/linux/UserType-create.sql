create table linux."UserType" (
  "name" text
    primary key,
  description text
    not null,
  is_email boolean
    not null
);
grant all    on linux."UserType" to aoadmin;
grant select on linux."UserType" to aoserv_app;
