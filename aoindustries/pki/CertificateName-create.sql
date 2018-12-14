create sequence         pki."CertificateName_id_seq" cycle;
grant all            on pki."CertificateName_id_seq" to aoadmin;
grant select         on pki."CertificateName_id_seq" to aoserv_app;
grant select, update on pki."CertificateName_id_seq" to management;

create table pki."CertificateName" (
  id integer
    default nextval('pki."CertificateName_id_seq"')
    primary key,
  ssl_certificate integer
    not null,
  is_common_name boolean
    not null,
  is_wildcard boolean
    not null,
  "domain" "com.aoindustries.net"."DomainName"
    not null
);
grant all    on pki."CertificateName" to aoadmin;
grant select on pki."CertificateName" to aoserv_app;
grant insert on pki."CertificateName" to management;
