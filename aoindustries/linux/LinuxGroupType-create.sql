create table linux."LinuxGroupType" (
  "name" text
    primary key,
  description text
    not null
);
grant all    on linux."LinuxGroupType" to aoadmin;
grant select on linux."LinuxGroupType" to aoserv_app;
