create index "UserServer_username_fkey" on mysql."UserServer" (
  username
);
create index "UserServer_disable_log_fkey" on mysql."UserServer" (
  disable_log
);
