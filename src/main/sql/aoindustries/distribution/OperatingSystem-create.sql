create table distribution."OperatingSystem" (
  "name" text
    primary key,
  display text
    not null,
  is_unix boolean
    not null
);
grant all    on distribution."OperatingSystem" to aoadmin;
grant select on distribution."OperatingSystem" to aoserv_app;
