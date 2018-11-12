create index notice_log_accounting_idx on notice_log (
  accounting
);
create index notice_log_notice_type_idx on notice_log (
  notice_type
);
create index notice_log_transid_idx on notice_log (
  transid
);
