create unique index email_pipes_uni on email_pipes (
  ao_server,
  "path"
);
create index email_pipes_accounting_idx on email_pipes (
  accounting
);
create index email_pipes_disable_log_idx on email_pipes (
  disable_log
);
