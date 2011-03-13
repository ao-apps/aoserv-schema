create table backup_servers (
  resource integer primary key,
  resource_type text not null check (resource_type='backup_server') -- Used as hidden constant type reference constraint
);
grant all on backup_servers to aoadmin;
grant select on backup_servers to aoserv_app;
