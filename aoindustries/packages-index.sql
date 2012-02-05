create index packages_accounting_idx on packages (
  accounting
);
create index packages_package_definition_idx on packages (
  package_definition
);
create index packages_created_by_idx on packages (
  created_by
);
create index packages_disable_log_idx on packages (
  disable_log
);
