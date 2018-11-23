create sequence pki."EncryptionKey_pkey_seq" cycle;
grant all    on pki."EncryptionKey_pkey_seq" to aoadmin;
grant select on pki."EncryptionKey_pkey_seq" to aoserv_app;

create table pki."EncryptionKey" (
  pkey integer
    default nextval('pki."EncryptionKey_pkey_seq"')
    primary key,
  accounting text
    not null,
  id text
    not null
);
grant all    on pki."EncryptionKey" to aoadmin;
grant select on pki."EncryptionKey" to aoserv_app;
