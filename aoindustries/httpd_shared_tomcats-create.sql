create sequence httpd_shared_tomcats_pkey_seq cycle;
grant all on httpd_shared_tomcats_pkey_seq to aoadmin;
grant select, update on httpd_shared_tomcats_pkey_seq to aoserv_app;

create table httpd_shared_tomcats (
  pkey integer
    default nextval('httpd_shared_tomcats_pkey_seq')
    constraint httpd_shared_tomcats_pkey primary key,
  name text
    not null,
  ao_server integer
    not null,
  version integer
    not null,
  linux_server_account integer
    not null,
  linux_server_group integer
    not null,
  is_secure bool
    not null,
  is_overflow bool
    not null,
  disable_log integer,
  tomcat4_worker integer
    unique,
  tomcat4_shutdown_port integer
    unique,
  tomcat4_shutdown_key text,
  is_manual bool
    not null,
  unique (ao_server, name)
);
grant all on httpd_shared_tomcats to aoadmin;
grant select, insert, update, delete on httpd_shared_tomcats to aoserv_app;
