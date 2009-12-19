create unique index resources_resource_type_super on resources (
  resource_type,
  pkey
);
create unique index resources_accounting_super on resources (
  accounting,
  pkey
);
create index resources_created_by_idx on resources (
  created_by
);
create index resources_disable_log_idx on resources (
  disable_log
);
