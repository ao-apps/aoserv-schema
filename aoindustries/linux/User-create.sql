create table linux."User" (
  username text
    primary key,
  "name" text,
  office_location text,
  office_phone text,
  home_phone text,
  "type" text
    not null,
  shell text
    not null,
  created timestamp with time zone
    not null
    default now(),
  disable_log integer
);
grant all                            on linux."User" to aoadmin;
grant select, insert, update, delete on linux."User" to aoserv_app;
