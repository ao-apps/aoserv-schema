create sequence httpd_shared_tomcats_pkey_seq cycle;
grant all            on httpd_shared_tomcats_pkey_seq to aoadmin;
grant select, update on httpd_shared_tomcats_pkey_seq to aoserv_app;

create table httpd_shared_tomcats (
  pkey integer
    default nextval('httpd_shared_tomcats_pkey_seq')
    constraint httpd_shared_tomcats_pkey primary key,
  "name" text
    not null
    check (
      -- Note: This matches keepWwwgroupDirs in HttpdSharedTomcatManager.
      -- Note: This matches isValidSharedTomcatName in HttpdSharedTomcat.
      "name" not in (
		-- Other filesystem patterns
        'lost+found',
        'aquota.group',
        'aquota.user'
      )
    ),
  ao_server integer
    not null,
  version integer
    not null,
  linux_server_account integer
    not null,
  linux_server_group integer
    not null,
  disable_log integer,
  tomcat4_worker integer
    unique,
  tomcat4_shutdown_port integer
    unique,
  tomcat4_shutdown_key text,
  is_manual bool
    not null,
  max_post_size integer
    check (max_post_size is null or max_post_size >= 0),
  unpack_wars boolean not null,
  auto_deploy boolean not null,
  unique (ao_server, "name")
);
grant all                            on httpd_shared_tomcats to aoadmin;
grant select, insert, update, delete on httpd_shared_tomcats to aoserv_app;
