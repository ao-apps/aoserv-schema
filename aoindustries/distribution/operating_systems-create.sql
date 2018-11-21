create table operating_systems (
  "name" text
    primary key,
  display text
    not null,
  is_unix boolean
    not null
);
grant all    on operating_systems to aoadmin;
grant select on operating_systems to aoserv_app;
