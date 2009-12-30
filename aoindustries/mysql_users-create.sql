create table mysql_users (
  ao_server_resource integer primary key,
  resource_type text not null check (resource_type='mysql_user'), -- Used as hidden constant type reference constraint
  accounting text not null, -- Used as hidden reference to usernames and ao_server_resources only
  ao_server integer not null, -- Used as hidden reference to mysql_servers and ao_server_resources only
  username text not null,
  mysql_server integer not null,
  host text,
  select_priv bool not null default false,
  insert_priv bool not null default false,
  update_priv bool not null default false,
  delete_priv bool not null default false,
  create_priv bool not null default false,
  drop_priv bool not null default false,
  reload_priv bool not null default false,
  shutdown_priv bool not null default false,
  process_priv bool not null default false,
  file_priv bool not null default false,
  grant_priv bool not null default false,
  references_priv bool not null default false,
  index_priv bool not null default false,
  alter_priv bool not null default false,
  show_db_priv bool not null default false,
  super_priv bool not null default false,
  create_tmp_table_priv bool not null default false,
  lock_tables_priv bool not null default false,
  execute_priv bool not null default false,
  repl_slave_priv bool not null default false,
  repl_client_priv bool not null default false,
  create_view_priv bool not null default false,
  show_view_priv bool not null default false,
  create_routine_priv bool not null default false,
  alter_routine_priv bool not null default false,
  create_user_priv bool not null default false,
  event_priv bool not null default false,
  trigger_priv bool not null default false,
  predisable_password text,
  max_questions integer not null check (max_questions>=0),
  max_updates integer not null check (max_updates>=0),
  max_connections integer not null check (max_connections>=0),
  max_user_connections integer not null check (max_user_connections>=0)
);
grant all on mysql_users to aoadmin;
grant select, insert, update, delete on mysql_users to aoserv_app;
