create unique index businesses_accounting_upper_uni on businesses (
  upper(accounting)
);
create index businesses_parent_ind on businesses (
  parent
);
create index businesses_disable_log_ind on businesses (
  disable_log
);
