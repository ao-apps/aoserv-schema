create index "UserServer_postgres_server_fkey" on postgresql."UserServer" (
  postgres_server
);
create index "UserServer_disable_log_fkey" on postgresql."UserServer" (
  disable_log
);
