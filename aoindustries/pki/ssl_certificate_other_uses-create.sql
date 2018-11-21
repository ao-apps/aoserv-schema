create sequence pki.ssl_certificate_other_uses_pkey_seq cycle;
grant all    on pki.ssl_certificate_other_uses_pkey_seq to aoadmin;
grant select on pki.ssl_certificate_other_uses_pkey_seq to aoserv_app;

create table ssl_certificate_other_uses (
  pkey integer
    default nextval('pki.ssl_certificate_other_uses_pkey_seq')
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
grant all    on ssl_certificate_other_uses to aoadmin;
grant select on ssl_certificate_other_uses to aoserv_app;
