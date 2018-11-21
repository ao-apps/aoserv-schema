create table server_farms (
  "name" text
    primary key,
  description text
    not null,
  owner integer
    not null,
  use_restricted_smtp_port bool
    not null
);
grant all    on server_farms to aoadmin;
grant select on server_farms to aoserv_app;
