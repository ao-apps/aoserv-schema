create table bank_transaction_types (
  "type" text primary key,
  is_negative bool not null
);
grant all on bank_transaction_types to aoadmin;
grant select on bank_transaction_types to aoserv_app;
