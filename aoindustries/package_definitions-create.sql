create sequence package_definitions_pkey_seq cycle;
grant all on package_definitions_pkey_seq to aoadmin;
grant select, update on package_definitions_pkey_seq to aoserv_app;

create table package_definitions (
  pkey integer default nextval('package_definitions_pkey_seq') primary key,
  category text not null,
  "name" text not null,
  version text not null,
  display text not null,
  description text not null,
  currency char(3) not null default 'USD',
  setup_fee decimal check (setup_fee is null or setup_fee>0),
  setup_fee_transaction_type text,
  monthly_rate decimal not null check (monthly_rate>=0),
  monthly_rate_transaction_type text not null,
  active bool not null,
  approved bool not null,
  check (not active or approved) -- May not be active when not approved
);
grant all on package_definitions to aoadmin;
grant select, insert, update, delete on package_definitions to aoserv_app;
