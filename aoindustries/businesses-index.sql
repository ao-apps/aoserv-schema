create index businesses_parent_ind on businesses (
  parent
);
create index businesses_disable_log_ind on businesses (
  disable_log
);
create index businesses_package_definition_idx on businesses (
  package_definition
);
create index businesses_created_by_idx on businesses (
  created_by
);
