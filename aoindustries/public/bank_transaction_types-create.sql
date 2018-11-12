create table bank_transaction_types (
  type text
    constraint bank_transaction_types_pkey primary key,
  display text
    not null,
  description text
    not null,
  is_negative bool
    not null
);
grant all    on bank_transaction_types to aoadmin;
grant select on bank_transaction_types to aoserv_app;
