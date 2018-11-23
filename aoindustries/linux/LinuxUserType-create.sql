create table linux."LinuxUserType" (
  "name" text
    primary key,
  description text
    not null,
  is_email boolean
    not null
);
grant all    on linux."LinuxUserType" to aoadmin;
grant select on linux."LinuxUserType" to aoserv_app;
