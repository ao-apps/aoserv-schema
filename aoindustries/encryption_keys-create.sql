create sequence encryption_keys_pkey_seq cycle;
grant all on encryption_keys_pkey_seq to aoadmin;
grant select on encryption_keys_pkey_seq to aoserv_app;

create table encryption_keys (
  pkey integer
    default nextval('encryption_keys_pkey_seq')
    constraint encryption_keys_pkey primary key,
  accounting text
    not null,
  id text
    not null,
  signup_signer bool
    not null,
  signup_recipient bool
    not null,
  credit_card_signer bool
    not null,
  credit_card_recipient bool
    not null
);
grant all on encryption_keys to aoadmin;
grant select on encryption_keys to aoserv_app;
