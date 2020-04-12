create index "Certificate_package_fkey" on pki."Certificate" (
  package
);
create unique index "Certificate_key_file_uni" on pki."Certificate" (
  ao_server,
  key_file
);
create unique index "Certificate_csr_file_uni" on pki."Certificate" (
  ao_server,
  csr_file
);
create unique index "Certificate_cert_file_uni" on pki."Certificate" (
  ao_server,
  cert_file
);
create unique index "Certificate_certbot_name_uni" on pki."Certificate" (
  certbot_name,
  ao_server
) where certbot_name is not null;
