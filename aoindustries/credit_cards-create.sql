create sequence credit_cards_pkey_seq cycle;
grant all on credit_cards_pkey_seq to aoadmin;
grant select, update on credit_cards_pkey_seq to aoserv_app;

create table credit_cards (
  pkey integer
    default nextval('credit_cards_pkey_seq')
    constraint credit_cards_pkey primary key,
  processor_id text not null,
  accounting text not null,
  group_name text,
  card_info text not null,
  provider_unique_id text not null,
  first_name text not null,
  last_name text not null,
  company_name text,
  email text,
  phone text,
  fax text,
  customer_tax_id text,
  street_address1 text not null,
  street_address2 text,
  city text not null,
  "state" text,
  postal_code text,
  country_code character(2) not null,
  created timestamp not null,
  created_by text not null,
  principal_name text,
  use_monthly bool not null,
  active bool not null default 'true',
  deactivated_on timestamp,
  deactivate_reason text,
  description text,
  encrypted_card_number text,
  encryption_card_number_from integer,
  encryption_card_number_recipient integer,
  encrypted_expiration text,
  encryption_expiration_from integer,
  encryption_expiration_recipient integer,
  check (
    (
        encrypted_card_number is null and encryption_card_number_from is null and encryption_card_number_recipient is null
        and encrypted_expiration is null and encryption_expiration_from is null and encryption_expiration_recipient is null
    ) or (
        encrypted_card_number is not null and encryption_card_number_from is not null and encryption_card_number_recipient is not null
        and encrypted_expiration is not null and encryption_expiration_from is not null and encryption_expiration_recipient is not null
    )
  )
);
grant all on credit_cards to aoadmin;
grant select, insert, update, delete on credit_cards to aoserv_app;
