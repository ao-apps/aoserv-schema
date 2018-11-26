create sequence pki."Certificate_id_seq" cycle;
grant all    on pki."Certificate_id_seq" to aoadmin;
grant select on pki."Certificate_id_seq" to aoserv_app;

create table pki."Certificate" (
  id integer
    default nextval('pki."Certificate_id_seq"')
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
grant all    on pki."Certificate" to aoadmin;
grant select on pki."Certificate" to aoserv_app;
