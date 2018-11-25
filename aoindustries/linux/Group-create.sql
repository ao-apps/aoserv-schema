create table linux."Group" (
  "name" text
    primary key,
  package text
    not null,
  "type" text
    not null
);
grant all                            on linux."Group" to aoadmin;
grant select, insert, update, delete on linux."Group" to aoserv_app;
