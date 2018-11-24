create index "MysqlUserServer_username_fkey" on mysql."MysqlUserServer" (
  username
);
create index "MysqlUserServer_disable_log_fkey" on mysql."MysqlUserServer" (
  disable_log
);
