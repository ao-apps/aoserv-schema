create index signup_requests_brand_ind on signup_requests (
  brand
);
create index signup_requests_package_definition_ind on signup_requests (
  package_definition
);
create index signup_requests_business_country_ind on signup_requests (
  business_country
);
create index signup_requests_ba_country_ind on signup_requests (
  ba_country
);
create index signup_requests_encryption_from_ind on signup_requests (
  encryption_from
);
create index signup_requests_encryption_recipient_ind on signup_requests (
  encryption_recipient
);
create index signup_requests_completed_by_ind on signup_requests (
  completed_by
);
