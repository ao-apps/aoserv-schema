create table mysql_servers (
  ao_server_resource integer primary key,
  resource_type text not null check (resource_type='mysql_server'), -- Used as hidden constant type reference constraint
  accounting text not null, -- Used as hidden reference to ao_server_resources only
  ao_server integer not null, -- Used as hidden reference to ao_server_resources only
  "name" text not null,
  version integer not null,
  max_connections integer not null,
  net_bind integer not null
);
grant all on mysql_servers to aoadmin;
grant select, insert, update, delete on mysql_servers to aoserv_app;
