create sequence httpd_servers_pkey_seq cycle;
grant all on httpd_servers_pkey_seq to aoadmin;
grant select, update on httpd_servers_pkey_seq to aoserv_app;

create table httpd_servers (
  pkey integer default nextval('httpd_servers_pkey_seq') constraint httpd_servers_pkey primary key,
  ao_server integer not null,
  "number" integer not null,
  can_add_sites bool not null,
  is_mod_jk bool not null,
  max_binds integer not null,
  linux_account integer not null,
  linux_group integer not null,
  mod_php_version integer,
  use_suexec bool not null,
  accounting text not null,
  is_shared bool not null,
  use_mod_perl bool not null,
  timeout integer not null
);
grant all on httpd_servers to aoadmin;
grant select, delete on httpd_servers to aoserv_app;
