create sequence ssl_certificates_pkey_seq cycle;
grant all    on ssl_certificates_pkey_seq to aoadmin;
grant select on ssl_certificates_pkey_seq to aoserv_app;

create table ssl_certificates (
  pkey integer
    default nextval('ssl_certificates_pkey_seq')
    primary key,
  ao_server integer
    not null,
  package integer
    not null,
  key_file text not null
    check (
      certbot_name is null
      or key_file = ('/etc/letsencrypt/live/' || certbot_name || '/privkey.pem')
    ),
  csr_file text
    check (
      certbot_name is null
      or csr_file is null
    ),
  cert_file text not null
    check (
      certbot_name is null
      or cert_file = ('/etc/letsencrypt/live/' || certbot_name || '/cert.pem')
    ),
  chain_file text
    check (
      certbot_name is null
      or chain_file = ('/etc/letsencrypt/live/' || certbot_name || '/chain.pem')
    ),
  certbot_name text
    check (
      certbot_name is null
      or (
        certbot_name not like '%/%'
        -- Avoid conflict with files from cyrus-imapd-copy-certificates or sendmail-copy-certificates
        and certbot_name not in ('copy-certificates', 'README.txt')
      )
    )
);
grant all    on ssl_certificates to aoadmin;
grant select on ssl_certificates to aoserv_app;
