create index postgres_server_users_postgres_server_idx on postgres_server_users (
  postgres_server
);
create index postgres_server_users_disable_log_idx on postgres_server_users (
  disable_log
);
