create unique index usernames_accounting_super on usernames (
  accounting,
  username
);
create index usernames_disable_log_idx on usernames (
  disable_log
);
