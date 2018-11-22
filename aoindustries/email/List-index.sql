create index "List_linux_server_account_fkey" on email."List" (
  linux_server_account
);
create index "List_linux_server_group_fkey" on email."List" (
  linux_server_group
);
create index "List_disable_log_fkey" on email."List" (
  disable_log
);
