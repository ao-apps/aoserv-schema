create index ssl_certificate_names_ssl_certificate_idx on ssl_certificate_names (
  ssl_certificate
);
create unique index ssl_certificate_names_common_name_uni on ssl_certificate_names (
  ssl_certificate
) where is_common_name;
create unique index ssl_certificate_names_alt_name_uni on ssl_certificate_names (
  ssl_certificate,
  is_wildcard,
  "domain"
) where not is_common_name;
