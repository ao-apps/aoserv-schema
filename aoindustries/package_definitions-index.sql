create unique index package_definitions_uni on package_definitions (
  category,
  "name",
  version
);
create index package_definitions_currency_ind on package_definitions (
  currency
);
create index package_definitions_setup_fee_transaction_type_idx on package_definitions (
  setup_fee_transaction_type
);
create index package_definitions_monthly_rate_transaction_type_idx on package_definitions (
  monthly_rate_transaction_type
);
create unique index package_definitions_approved_super on package_definitions (
  pkey,
  approved
);
