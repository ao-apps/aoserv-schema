create index disable_log_accounting_idx on disable_log (
  accounting
);
create index disable_log_disabled_by_idx on disable_log (
  disabled_by
);
