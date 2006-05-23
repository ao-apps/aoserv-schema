create table server_farms (
  name text
    constraint server_farms_pkey primary key,
  description text
    not null,
  protected_net text
    not null,
  allow_same_server_backup bool
    not null,
  backup_farm text
    not null,
  owner integer
    not null
);
grant all on server_farms to aoadmin;
grant select on server_farms to aoserv_app;
