create index "Package_accounting_fkey" on billing."Package" (
  accounting
);
create index "Package_package_definition_fkey" on billing."Package" (
  package_definition
);
create index "Package_created_by_fkey" on billing."Package" (
  created_by
);
create index "Package_disable_log_fkey" on billing."Package" (
  disable_log
);
