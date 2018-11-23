create index "MysqlServerUser_username_fkey" on mysql."MysqlServerUser" (
  username
);
create index "MysqlServerUser_disable_log_fkey" on mysql."MysqlServerUser" (
  disable_log
);
