create table postgres_databases (
  ao_server_resource integer primary key,
  resource_type text not null check (resource_type='postgresql_database'), -- Used as hidden constant type reference constraint
  accounting text not null, -- Used as hidden reference to ao_server_resources only
  ao_server integer not null, -- Used as hidden reference to postgres_servers and ao_server_resources only
  "name" text not null,
  postgres_server integer not null,
  datdba integer not null,
  encoding integer not null,
  is_template bool not null,
  allow_conn bool not null,
  enable_postgis bool not null
);
grant all on postgres_databases to aoadmin;
grant select, insert, update, delete on postgres_databases to aoserv_app;
