create sequence account."EncryptionKey_pkey_seq" cycle;
grant all    on account."EncryptionKey_pkey_seq" to aoadmin;
grant select on account."EncryptionKey_pkey_seq" to aoserv_app;

-- TODO: Move to pki schema?
create table account."EncryptionKey" (
  pkey integer
    default nextval('account."EncryptionKey_pkey_seq"')
    primary key,
  accounting text
    not null,
  id text
    not null
);
grant all    on account."EncryptionKey" to aoadmin;
grant select on account."EncryptionKey" to aoserv_app;
