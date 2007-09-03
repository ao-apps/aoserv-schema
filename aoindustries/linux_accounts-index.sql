create index linux_accounts_shell_idx on linux_accounts (
  shell
);
create index linux_accounts_type_idx on linux_accounts (
  "type"
);
create index linux_accounts_disable_log_idx on linux_accounts (
  disable_log
);
