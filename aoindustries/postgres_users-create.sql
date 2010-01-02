create table postgres_users (
  ao_server_resource integer primary key,
  resource_type text not null check (resource_type='postgresql_user'), -- Used as hidden constant type reference constraint
  accounting text not null, -- Used as hidden reference to usernames and ao_server_resources only
  ao_server integer not null, -- Used as hidden reference to postgres_servers and ao_server_resources only
  username text not null,
  postgres_server integer not null,
  createdb bool not null default false,
  trace bool not null default false,
  super bool not null default false,
  catupd bool not null default false,
  predisable_password text
);
grant all on postgres_users to aoadmin;
grant select, insert, update, delete on postgres_users to aoserv_app;
