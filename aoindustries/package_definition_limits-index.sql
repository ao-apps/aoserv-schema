create unique index package_definition_limits_uni on package_definition_limits (
  package_definition,
  resource_type
);
create index package_definition_limits_resource_type_idx on package_definition_limits (
  resource_type
);
create index package_definition_limits_additional_transaction_type_idx on package_definition_limits (
  additional_transaction_type
);
