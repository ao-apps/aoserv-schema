create index business_administrators_country_idx on business_administrators (
  country
);
create index business_administrators_disable_log_idx on business_administrators (
  disable_log
);
create unique index business_administrators_support_code_uni on business_administrators(
  support_code
);
