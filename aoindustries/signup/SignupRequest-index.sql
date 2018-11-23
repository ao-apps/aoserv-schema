create index "SignupRequest_brand_fkey" on signup."SignupRequest" (
  brand
);
create index "SignupRequest_package_definition_fkey" on signup."SignupRequest" (
  package_definition
);
create index "SignupRequest_business_country_fkey" on signup."SignupRequest" (
  business_country
);
create index "SignupRequest_ba_country_fkey" on signup."SignupRequest" (
  ba_country
);
create index "SignupRequest_encryption_from_fkey" on signup."SignupRequest" (
  encryption_from
);
create index "SignupRequest_encryption_recipient_fkey" on signup."SignupRequest" (
  encryption_recipient
);
create index "SignupRequest_completed_by_fkey" on signup."SignupRequest" (
  completed_by
);
