create table merchant_accounts (
  name text
    constraint merchant_accounts_pkey primary key,
  display text
    not null,
  bank_account text
    not null,
  java_connector text,
  url text,
  merchant_id text
    not null,
  deposit_delay integer
    not null,
  withdrawal_delay integer
    not null
);
grant all on merchant_accounts to aoadmin;
grant select, update on merchant_accounts to aoserv_app;
