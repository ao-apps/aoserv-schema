create sequence bank_transactions_transid_seq cycle;
grant all on bank_transactions_transid_seq to aoadmin;
grant select, update on bank_transactions_transid_seq to aoserv_app;

create table bank_transactions (
  time timestamp
    not null,
  transid integer
    default nextval('bank_transactions_transid_seq')
    constraint bank_transactions_pkey primary key,
  bank_account text
    not null,
  merchant_account text,
  administrator text
    not null
    default 'orion',
  type text
    not null,
  expense_code text,
  description text
    not null,
  check_no text,
  amount decimal(9,2)
    not null,
  confirmed bool
    not null
--  constraint amount_chk
--    check ( case when ( select is_negative from bank_transaction_types t1 where t1.type=type )=true then amount<=0 else amount>=0 end )
);
grant all on bank_transactions to aoadmin;
grant select, insert, update, delete on bank_transactions to aoserv_app;
