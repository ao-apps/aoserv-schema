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
  signup_from bool
    not null,
  signup_recipient bool
    not null,
  -- May not use the same key for from (signing) and receiving (no security added since both would be in the same place)
  check (not(signup_from and signup_recipient))
);
grant all on encryption_keys to aoadmin;
grant select on encryption_keys to aoserv_app;
