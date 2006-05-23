create table incoming_payments (
  transid integer
    constraint incoming_payments_pkey primary key,
  encrypted_card_name text
    not null,
  encrypted_card_number text
    not null,
  encrypted_expiration_month text
    not null,
  encrypted_expiration_year text
    not null
);
grant all on incoming_payments to aoadmin;
grant select, insert, delete on incoming_payments to aoserv_app;
