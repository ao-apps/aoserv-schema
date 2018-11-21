create sequence cvs_repositories_pkey_seq cycle;
grant all            on cvs_repositories_pkey_seq to aoadmin;
grant select, update on cvs_repositories_pkey_seq to aoserv_app;

create table cvs_repositories (
  pkey integer
    default nextval('cvs_repositories_pkey_seq')
    primary key,
  path text
    not null,
  linux_server_account integer
    not null,
  linux_server_group integer
    not null,
  mode int8
    not null,
  created timestamp with time zone
    not null,
  disable_log integer
);
grant all                            on cvs_repositories to aoadmin;
grant select, update, insert, delete on cvs_repositories to aoserv_app;
