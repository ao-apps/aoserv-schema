create sequence servers_pkey_seq cycle;
grant all on servers_pkey_seq to aoadmin;
grant select, update on servers_pkey_seq to aoserv_app;

create table servers (
  pkey integer
    default nextval('servers_pkey_seq')
    constraint servers_pkey primary key,
  hostname text
    not null
    unique,
  farm text
    not null,
  owner text
    not null,
  administrator text
    not null,
  description text
    not null,
  backup_hour integer
    not null
    constraint backup_hour_chk
      check (backup_hour>=0 and backup_hour<=23),
  last_backup_time timestamp,
  operating_system_version integer
    not null,
  asset_label text,
  minimum_power float4,
  maximum_power float4
);
grant all on servers to aoadmin;
grant select, insert, update on servers to aoserv_app;
