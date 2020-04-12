create table distribution."Architecture" (
  "name" text
    primary key,
  bits integer
    not null
);
grant all    on distribution."Architecture" to aoadmin;
grant select on distribution."Architecture" to aoserv_app;
