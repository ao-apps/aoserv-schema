create table mysql_databases (
  ao_server_resource integer primary key,
  resource_type text not null check (resource_type='mysql_database'), -- Used as hidden constant type reference constraint
  ao_server integer not null, -- Used as hidden reference to mysql_servers and ao_server_resources only
  "name" text not null,
  mysql_server integer not null
);
grant all on mysql_databases to aoadmin;
grant select, insert, update, delete on mysql_databases to aoserv_app;
