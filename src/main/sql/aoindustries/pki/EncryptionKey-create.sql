create sequence pki."EncryptionKey_id_seq" cycle;
grant all    on pki."EncryptionKey_id_seq" to aoadmin;
grant select on pki."EncryptionKey_id_seq" to aoserv_app;

create table pki."EncryptionKey" (
  id integer
    default nextval('pki."EncryptionKey_id_seq"')
    primary key,
  accounting text
    not null,
  "keyId" text
    not null
);
grant all    on pki."EncryptionKey" to aoadmin;
grant select on pki."EncryptionKey" to aoserv_app;
