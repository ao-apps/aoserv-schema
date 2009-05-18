create unique index package_definitions_uni on package_definitions (
  brand,
  category,
  name,
  version
);
create index package_definitions_category_idx on package_definitions (
  category
);
create index package_definitions_setup_fee_transaction_type_idx on package_definitions (
  setup_fee_transaction_type
);
create index package_definitions_monthly_rate_transaction_type_idx on package_definitions (
  monthly_rate_transaction_type
);
