create index "DisableLog_accounting_idx" on account."DisableLog" (
  accounting
);
create index "DisableLog_disabled_by_idx" on account."DisableLog" (
  disabled_by
);
