create sequence httpd_servers_pkey_seq cycle;
grant all on httpd_servers_pkey_seq to aoadmin;
grant select, update on httpd_servers_pkey_seq to aoserv_app;

create table httpd_servers (
  pkey integer
    default nextval('httpd_servers_pkey_seq')
    constraint httpd_servers_pkey primary key,
  ao_server integer
    not null,
  "name" text
    check ("name" is null or length("name") > 0),
  can_add_sites bool
    not null,
  linux_server_account integer
    not null,
  linux_server_group integer
    not null,
  mod_php_version integer,
  use_suexec bool
    not null,
  package integer
    not null,
  is_shared bool
    not null,
  use_mod_perl bool
    not null,
  timeout integer
    not null,
  max_concurrency integer
    not null
    default 200,
  mod_access_compat boolean,
  mod_actions boolean,
  mod_alias boolean,
  mod_auth_basic boolean,
  mod_authn_core boolean,
  mod_authn_file boolean,
  mod_authz_core boolean,
  mod_authz_groupfile boolean,
  mod_authz_host boolean,
  mod_authz_user boolean,
  mod_autoindex boolean,
  mod_deflate boolean,
  mod_dir boolean,
  mod_filter boolean,
  mod_headers boolean,
  mod_include boolean,
  mod_jk boolean,
  mod_log_config boolean,
  mod_mime boolean,
  mod_mime_magic boolean,
  mod_negotiation boolean,
  mod_proxy boolean,
  mod_proxy_http boolean,
  mod_reqtimeout boolean,
  mod_rewrite boolean,
  mod_setenvif boolean,
  mod_socache_shmcb boolean,
  mod_ssl boolean,
  mod_status boolean,
  mod_wsgi boolean
);
grant all on httpd_servers to aoadmin;
grant select, delete on httpd_servers to aoserv_app;
