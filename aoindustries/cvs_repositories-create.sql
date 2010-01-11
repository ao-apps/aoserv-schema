create table cvs_repositories (
  ao_server_resource integer primary key,
  resource_type text not null check (resource_type='cvs_repository'), -- Used as hidden constant type reference constraint
  ao_server integer not null, -- Used as hidden reference to ao_server_resources and linux_account_groups only
  "path" text not null,
  linux_account_group integer not null,
  linux_account_type text not null check (linux_account_type='shell_account'), -- Used as hidden reference to linux_account_groups only
  mode int8 not null
);
grant all on cvs_repositories to aoadmin;
grant select, update, insert, delete on cvs_repositories to aoserv_app;
