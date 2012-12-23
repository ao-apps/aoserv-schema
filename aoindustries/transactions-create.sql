create sequence transactions_transid_seq cycle;
grant all on transactions_transid_seq to aoadmin;
grant select, update on transactions_transid_seq to aoserv_app;

create table transactions (
  time timestamp with time zone
    default now()
    not null,
  transid integer
    default nextval('transactions_transid_seq')
    constraint transactions_pkey primary key,
  accounting text
    not null,
  source_accounting text
    not null,
  username text
    not null,
  type text
    not null,
  description text
    not null,
  quantity decimal(8,3)
    not null
    default 1
    constraint quantity_chk
      check (quantity>0),
  rate decimal(9,2)
    not null,
  payment_type text,
  payment_info text,
  processor text,
  credit_card_transaction integer,
  payment_confirmed char(1)
    default 'W'
    not null
    constraint payment_confirmed_chk
      check (payment_confirmed='W' or payment_confirmed='Y' or payment_confirmed='N')
);
grant all on transactions to aoadmin;
grant select, insert, update, delete on transactions to aoserv_app;
