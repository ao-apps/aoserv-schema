create index ssl_certificates_package_idx on ssl_certificates (
  package
);
create unique index ssl_certificates_key_file_uni on ssl_certificates (
  ao_server,
  key_file
);
create unique index ssl_certificates_csr_file_uni on ssl_certificates (
  ao_server,
  csr_file
);
create unique index ssl_certificates_cert_file_uni on ssl_certificates (
  ao_server,
  cert_file
);
create unique index ssl_certificates_certbot_name_uni on ssl_certificates (
  certbot_name,
  ao_server
) where certbot_name is not null;
