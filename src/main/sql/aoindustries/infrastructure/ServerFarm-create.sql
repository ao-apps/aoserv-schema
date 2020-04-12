create table infrastructure."ServerFarm" (
  "name" text
    primary key,
  description text
    not null,
  owner integer
    not null,
  use_restricted_smtp_port boolean
    not null
);
grant all    on infrastructure."ServerFarm" to aoadmin;
grant select on infrastructure."ServerFarm" to aoserv_app;
