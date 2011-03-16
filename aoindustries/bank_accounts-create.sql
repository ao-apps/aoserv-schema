create table bank_accounts (
  "name" text constraint bank_accounts_pkey primary key,
  display text not null,
  bank text not null
);
grant all on bank_accounts to aoadmin;
grant select on bank_accounts to aoserv_app;
