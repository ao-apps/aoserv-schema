create sequence transactions_transid_seq cycle;
grant all on transactions_transid_seq to aoadmin;
grant select, update on transactions_transid_seq to aoserv_app;

create table transactions (
  transid integer default nextval('transactions_transid_seq') constraint transactions_pkey primary key,
  "time" timestamp default now() not null,
  accounting text not null,
  source_accounting text not null,
  username text not null,
  "type" text not null,
  description text not null,
  quantity decimal(8,3) not null default 1 check (quantity>0),
  currency char(3) not null,
  rate decimal not null,
  payment_type text,
  payment_info text,
  processor text,
  credit_card_transaction integer,
  status char(1) default 'W' not null check (status in ('W', 'Y', 'N'))
);
grant all on transactions to aoadmin;
grant select, insert, update, delete on transactions to aoserv_app;
