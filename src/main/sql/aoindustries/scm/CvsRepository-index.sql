create index "CvsRepository_linux_server_account_fkey" on scm."CvsRepository" (
  linux_server_account
);
create index "CvsRepository_linux_server_group_fkey" on scm."CvsRepository" (
  linux_server_group
);
create index "CvsRepository_disable_log_fkey" on scm."CvsRepository" (
  disable_log
);
