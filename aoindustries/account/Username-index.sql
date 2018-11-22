create index "Username_package_fkey" on account."Username" (
  package
);
create index "Username_disable_log_fkey" on account."Username" (
  disable_log
);
