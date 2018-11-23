create sequence pki."CertificateOtherUse_pkey_seq" cycle;
grant all    on pki."CertificateOtherUse_pkey_seq" to aoadmin;
grant select on pki."CertificateOtherUse_pkey_seq" to aoserv_app;

create table pki."CertificateOtherUse" (
  pkey integer
    default nextval('pki."CertificateOtherUse_pkey_seq"')
    primary key,
  ssl_certificate integer
    not null,
  sort_order      smallint not null
  check (
    sort_order >= 0
  ),
  "count"         integer not null
  check (
    "count" >= 1
  ),
  display         text not null,
  unique(ssl_certificate, sort_order)
);
grant all    on pki."CertificateOtherUse" to aoadmin;
grant select on pki."CertificateOtherUse" to aoserv_app;
