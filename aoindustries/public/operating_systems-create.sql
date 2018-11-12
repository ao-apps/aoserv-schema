create table operating_systems (
  name text
    constraint operating_systems_pkey primary key,
  display text
    not null,
  is_unix bool
    not null
);
grant all    on operating_systems to aoadmin;
grant select on operating_systems to aoserv_app;
