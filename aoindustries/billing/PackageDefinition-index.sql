create unique index "PackageDefinition_uni" on billing."PackageDefinition" (
  accounting,
  category,
  "name",
  version
);
create index "PackageDefinition_category_fkey" on billing."PackageDefinition" (
  category
);
create index "PackageDefinition_setup_fee_transaction_type_fkey" on billing."PackageDefinition" (
  setup_fee_transaction_type
);
create index "PackageDefinition_monthly_rate_transaction_type_fkey" on billing."PackageDefinition" (
  monthly_rate_transaction_type
);
