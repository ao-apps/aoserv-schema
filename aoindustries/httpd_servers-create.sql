create table httpd_servers (
  ao_server_resource integer primary key,
  resource_type text not null check (resource_type='httpd_server'), -- Used as hidden constant type reference constraint
  ao_server integer not null, -- Used as hidden reference to linux_account_groups and ao_server_resources only
  "number" integer not null,
  max_binds integer not null,
  linux_account_group integer not null,
  mod_php_version integer,
  use_suexec bool not null,
  is_shared bool not null,
  use_mod_perl bool not null,
  timeout integer not null
);
grant all on httpd_servers to aoadmin;
grant select, delete on httpd_servers to aoserv_app;
