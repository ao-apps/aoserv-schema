create sequence         scm."CvsRepository_pkey_seq" cycle;
grant all            on scm."CvsRepository_pkey_seq" to aoadmin;
grant select, update on scm."CvsRepository_pkey_seq" to aoserv_app;

create table scm."CvsRepository" (
  pkey integer
    default nextval('scm."CvsRepository_pkey_seq"')
    primary key,
  "path" text
    not null,
  linux_server_account integer
    not null,
  linux_server_group integer
    not null,
  mode bigint
    not null,
  created timestamp with time zone
    not null
    default now(),
  disable_log integer
);
grant all                            on scm."CvsRepository" to aoadmin;
grant select, update, insert, delete on scm."CvsRepository" to aoserv_app;
