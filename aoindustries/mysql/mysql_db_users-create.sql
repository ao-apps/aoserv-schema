create sequence mysql_db_users_pkey_seq cycle;
grant all            on mysql_db_users_pkey_seq to aoadmin;
grant select, update on mysql_db_users_pkey_seq to aoserv_app;

create table mysql_db_users (
  pkey integer
    default nextval('mysql_db_users_pkey_seq')
    constraint mysql_db_users_pkey primary key,
  mysql_database integer
    not null,
  mysql_server_user integer
    not null,
  select_priv bool
    not null
    default false,
  insert_priv bool
    not null
    default false,
  update_priv bool
    not null
    default false,
  delete_priv bool
    not null
    default false,
  create_priv bool
    not null
    default false,
  drop_priv bool
    not null
    default false,
  grant_priv bool
    not null
    default false,
  references_priv bool
    not null
    default false,
  index_priv bool
    not null
    default false,
  alter_priv bool
    not null
    default false,
  create_tmp_table_priv bool
    not null
    default false,
  lock_tables_priv bool
    not null
    default false,
  create_view_priv bool
    not null
    default false,
  show_view_priv bool
    not null
    default false,
  create_routine_priv bool
    not null
    default false,
  alter_routine_priv bool
    not null
    default false,
  execute_priv bool
    not null
    default false,
  event_priv bool
    not null
    default false,
  trigger_priv bool
    not null
    default false,
  unique (mysql_database, mysql_server_user)
);
grant all                            on mysql_db_users to aoadmin;
grant select, update, insert, delete on mysql_db_users to aoserv_app;
