create index "Username_package_idx" on account."Username" (
  package
);
create index "Username_disable_log_idx" on account."Username" (
  disable_log
);
