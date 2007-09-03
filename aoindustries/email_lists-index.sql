create index email_lists_linux_account_idx on email_lists (
  linux_account
);
create index email_lists_linux_group_idx on email_lists (
  linux_group
);
create index email_lists_backup_level_idx on email_lists (
  backup_level
);
create index email_lists_backup_retention_idx on email_lists (
  backup_retention
);
create index email_lists_disable_log_idx on email_lists (
  disable_log
);
