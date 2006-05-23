create sequence credit_cards_pkey_seq cycle;
grant all on credit_cards_pkey_seq to aoadmin;
grant select, update on credit_cards_pkey_seq to aoserv_app;

create table credit_cards (
  pkey integer
    default nextval('credit_cards_pkey_seq')
    constraint credit_cards_pkey primary key,
  accounting text
    not null,
  card_number text
    not null,
  card_info text
    not null,
  expiration_month text
    not null,
  expiration_year text
    not null,
  cardholder_name text
    not null,
  street_address text
    not null,
  city text
    not null,
  state text,
  zip text,
  created timestamp
    not null,
  created_by text
    not null,
  use_monthly bool
    not null,
  active bool
    not null
    default 'true',
  deactivated_on timestamp,
  deactivate_reason text,
  priority integer
    not null
    default 1,
  description text,
  unique(accounting, priority)
);
grant all on credit_cards to aoadmin;
grant select, insert, update, delete on credit_cards to aoserv_app;
