create unique index group_names_accounting_super on group_names (
  accounting,
  group_name
);
create index group_names_disable_log_idx on group_names (
  disable_log
);
