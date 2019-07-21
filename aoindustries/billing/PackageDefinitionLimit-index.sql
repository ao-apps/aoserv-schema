create index "PackageDefinitionLimit_resource_fkey" on billing."PackageDefinitionLimit" (
  resource
);
create index "PackageDefinitionLimit_additionalRate.currency_fkey" on billing."PackageDefinitionLimit" (
  "additionalRate.currency"
);
create index "PackageDefinitionLimit_additional_transaction_type_fkey" on billing."PackageDefinitionLimit" (
  additional_transaction_type
);
