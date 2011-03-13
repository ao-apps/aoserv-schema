create table servers (
  resource integer primary key,
  resource_type text not null check (resource_type in ('backup_server', 'physical_server', 'virtual_server')), -- Used as hidden type reference constraint
  accounting text not null, -- Used as hidden reference to resources
  farm integer not null,
  description text not null,
  operating_system_version integer,
  "name" text not null check (length("name")>0 and "name" not like '%/%'),
  monitoring_enabled boolean not null default true
);
grant all on servers to aoadmin;
grant select, insert, update on servers to aoserv_app;
