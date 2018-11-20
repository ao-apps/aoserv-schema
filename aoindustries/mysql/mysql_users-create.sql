create table mysql_users (
  username text
    constraint mysql_users_pkey primary key,
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
  reload_priv bool
    not null
    default false,
  shutdown_priv bool
    not null
    default false,
  process_priv bool
    not null
    default false,
  file_priv bool
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
  show_db_priv bool
    not null
    default false,
  super_priv bool
    not null
    default false,
  create_tmp_table_priv bool
    not null
    default false,
  lock_tables_priv bool
    not null
    default false,
  execute_priv bool
    not null
    default false,
  repl_slave_priv bool
    not null
    default false,
  repl_client_priv bool
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
  create_user_priv bool
    not null
    default false,
  event_priv bool
    not null
    default false,
  trigger_priv bool
    not null
    default false,
  disable_log integer
);
grant all                            on mysql_users to aoadmin;
grant select, insert, update, delete on mysql_users to aoserv_app;