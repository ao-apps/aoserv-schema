create index "Request_brand_fkey" on signup."Request" (
  brand
);
create index "Request_package_definition_fkey" on signup."Request" (
  package_definition
);
create index "Request_business_country_fkey" on signup."Request" (
  business_country
);
create index "Request_ba_country_fkey" on signup."Request" (
  ba_country
);
create index "Request_encryption_from_fkey" on signup."Request" (
  encryption_from
);
create index "Request_encryption_recipient_fkey" on signup."Request" (
  encryption_recipient
);
create index "Request_completed_by_fkey" on signup."Request" (
  completed_by
);
