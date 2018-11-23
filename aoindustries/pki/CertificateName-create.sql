create sequence pki."CertificateName_pkey_seq" cycle;
grant all    on pki."CertificateName_pkey_seq" to aoadmin;
grant select on pki."CertificateName_pkey_seq" to aoserv_app;

create table pki."CertificateName" (
  pkey integer
    default nextval('pki."CertificateName_pkey_seq"')
    primary key,
  ssl_certificate integer
    not null,
  is_common_name boolean
    not null,
  is_wildcard boolean
    not null,
  "domain" text
    not null
);
grant all    on pki."CertificateName" to aoadmin;
grant select on pki."CertificateName" to aoserv_app;
