create index "DisableLog_accounting_fkey" on account."DisableLog" (
  accounting
);
create index "DisableLog_disabled_by_fkey" on account."DisableLog" (
  disabled_by
);
