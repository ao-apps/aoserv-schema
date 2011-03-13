create table server_farms (
  resource integer primary key,
  resource_type text not null check (resource_type='server_farm'), -- Used as hidden constant type reference constraint
  "name" text not null unique,
  description text not null,
  use_restricted_smtp_port bool not null
);
grant all on server_farms to aoadmin;
grant select on server_farms to aoserv_app;
