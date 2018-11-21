create sequence account.encryption_keys_pkey_seq cycle;
grant all    on account.encryption_keys_pkey_seq to aoadmin;
grant select on account.encryption_keys_pkey_seq to aoserv_app;

create table encryption_keys (
  pkey integer
    default nextval('account.encryption_keys_pkey_seq')
    primary key,
  accounting text
    not null,
  id text
    not null
);
grant all    on encryption_keys to aoadmin;
grant select on encryption_keys to aoserv_app;
