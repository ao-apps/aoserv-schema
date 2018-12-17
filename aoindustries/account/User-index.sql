create index "User_package_fkey" on account."User" (
  package
);
create index "User_disable_log_fkey" on account."User" (
  disable_log
);
