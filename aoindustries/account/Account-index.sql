create unique index "Account_accounting_upper_idx" on account."Account" (
  upper(accounting)
);
create index "Account_parent_idx" on account."Account" (
  parent
);
create index "Account_disable_log_idx" on account."Account" (
  disable_log
);
