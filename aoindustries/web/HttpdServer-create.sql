create sequence         httpd."HttpdServer_pkey_seq" cycle;
grant all            on httpd."HttpdServer_pkey_seq" to aoadmin;
grant select, update on httpd."HttpdServer_pkey_seq" to aoserv_app;

create table httpd."HttpdServer" (
  pkey integer
    default nextval('httpd."HttpdServer_pkey_seq"')
    primary key,
  ao_server integer
    not null,
  "name" text
    check ("name" is null or length("name") > 0),
  can_add_sites boolean
    not null,
  linux_server_account integer
    not null,
  linux_server_group integer
    not null,
  mod_php_version integer,
  use_suexec boolean
    not null,
  package integer
    not null,
  is_shared boolean
    not null,
  use_mod_perl boolean
    not null,
  timeout integer
    not null,
  max_concurrency integer
    not null
    default 200,
  monitoring_concurrency_low integer
    default 120
    check (
      monitoring_concurrency_low is null or (
        monitoring_concurrency_low > 0
        and monitoring_concurrency_low <= max_concurrency
      )
    ),
  monitoring_concurrency_medium integer
    default 140
    check (
      monitoring_concurrency_medium is null or (
        monitoring_concurrency_low is not null
        and monitoring_concurrency_medium > monitoring_concurrency_low
        and monitoring_concurrency_medium <= max_concurrency
      )
    ),
  monitoring_concurrency_high integer
    default 160
    check (
      monitoring_concurrency_high is null or (
        monitoring_concurrency_medium is not null
        and monitoring_concurrency_high > monitoring_concurrency_medium
        and monitoring_concurrency_high <= max_concurrency
      )
    ),
  monitoring_concurrency_critical integer
    default 180
    check (
      monitoring_concurrency_critical is null or (
        monitoring_concurrency_high is not null
        and monitoring_concurrency_critical > monitoring_concurrency_high
        and monitoring_concurrency_critical <= max_concurrency
      )
    ),
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
grant all            on httpd."HttpdServer" to aoadmin;
grant select, delete on httpd."HttpdServer" to aoserv_app;
