create table linux."LinuxGroup" (
  "name" text
    primary key,
  package text
    not null,
  "type" text
    not null
);
grant all                            on linux."LinuxGroup" to aoadmin;
grant select, insert, update, delete on linux."LinuxGroup" to aoserv_app;
