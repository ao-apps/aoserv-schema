create index "CertificateName_ssl_certificate_fkey" on pki."CertificateName" (
  ssl_certificate
);
create unique index "CertificateName_common_name_uni" on pki."CertificateName" (
  ssl_certificate
) where is_common_name;
create unique index "CertificateName_alt_name_uni" on pki."CertificateName" (
  ssl_certificate,
  is_wildcard,
  lower("domain")
) where not is_common_name;
