create index "Administrator_country_fkey" on account."Administrator" (
  country
);
create index "Administrator_disable_log_fkey" on account."Administrator" (
  disable_log
);
create unique index "Administrator_support_code_uni" on account."Administrator"(
  support_code
);
