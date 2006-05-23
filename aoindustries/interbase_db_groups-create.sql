create sequence interbase_db_groups_pkey_seq cycle;
grant all on interbase_db_groups_pkey_seq to aoadmin;
grant select, update on interbase_db_groups_pkey_seq to aoserv_app;

create table interbase_db_groups (
  pkey integer
    default nextval('interbase_db_groups_pkey_seq')
    constraint interbase_db_groups_pkey primary key,
  name text
    not null,
  linux_server_group integer
    not null
);
grant all on interbase_db_groups to aoadmin;
grant select, update, insert, delete on interbase_db_groups to aoserv_app;
